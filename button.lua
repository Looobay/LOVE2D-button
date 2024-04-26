-- This project is not finished yet.
local m = require "module.engine.myMath"

function in_bound(target, mx, my) --This one do math and allows you to create a hitbox for the button
    return mx >= target.x and mx <= target.x + target.width and my >= target.y and my <= target.y + target.height
end

local  button_module = {}

local buttons = {}

function button_module:new(x,y,width,height,color,color2,text,textColor, func) -- Put this in love.load()
    newButton = {}
    newButton.x = x
    newButton.y = y
    newButton.width = width
    newButton.height = height
    newButton.color = color
    newButton.text = text
    newButton.textColor = textColor
    newButton.func = func or function()print("No function detected")end

    table.insert(buttons, newButton)
end

function button_module:update(dt) -- Put this in love.update()
    for i,v in ipairs(buttons) do
        local x,y = love.mouse.getPosition()
        local leftClick = love.mouse.isDown(1)
        local rightClick = love.mouse.isDown(2)
        local inBound = in_bound(v, x, y)
    
        if inBound and leftClick then
         v.func()
        end
    end
end

function button_module:draw() -- Put this in love.draw()
    local r,g,b,a = love.graphics.getColor()

    for i,v in ipairs(buttons) do

        love.graphics.setColor(v.color)
        love.graphics.rectangle("fill", v.x, v.y, v.width, v.height)

        love.graphics.setColor(v.textColor)
        love.graphics.print(v.text,v.x,v.y)

        love.graphics.setColor(r,g,b,a)
    end
end

return button_module
