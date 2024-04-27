-- This project is not finished yet.

function in_bound(target, mx, my) --This one do math and allows you to create a hitbox for the button
    return mx >= target.x and mx <= target.x + target.width and my >= target.y and my <= target.y + target.height
end

screen = { w= love.graphics.getWidth(), h= love.graphics.getHeight()} -- This help us to center the buttons

local  button_module = {} -- Here we store all the functions

local buttons = {} -- Here we store all the new buttons

function button_module:new(x,y,width,height,color,text,textColor, func, center) -- Put this in love.load()
    newButton = {} -- We create a table and we create inside of it all the features we want for the button
    newButton.x = x
    newButton.y = y
    newButton.width = width
    newButton.height = height
    newButton.color = color
    newButton.text = text
    newButton.textColor = textColor
    newButton.func = func or function()print("No function detected")end
    newButton.center = center or false

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
        if v.center == true then -- if the center option is set on "true" then we center the button AND the text :D
            love.graphics.setColor(v.color)
            v.x = screen.w/3 -- BUT IF YOU DO THAT THE X AXIS OF YOUR BUTTON IS NOT IMPORTANT SO DONT BE SURPRISED !
            love.graphics.rectangle("fill", v.x, v.y, v.width, v.height)

            love.graphics.setColor(v.textColor)
            love.graphics.print(v.text,v.x,v.y+(v.height/3))
        else
            love.graphics.setColor(v.color)
            love.graphics.rectangle("fill", v.x, v.y, v.width, v.height)

            love.graphics.setColor(v.textColor)
            love.graphics.print(v.text,v.x,v.y)
        end

        love.graphics.setColor(r,g,b,a) -- We reset the color to the state before we draw the buttons
    end
end

function button_module:delete(btn)
    table.remove(buttons, btn.label)
end

return button_module
