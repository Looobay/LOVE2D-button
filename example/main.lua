button = require "button"

function love.load()
    ExampleButton = {button:new(
        300, -- X
        150, -- Y
        150, -- Width
        100, -- Heigth
        {1,1,1}, -- Button color
        "Example", -- Text
        {0,0,0}, -- Text color
        function() -- Button's function
            print("Hello")
        end),
        false -- Center
    }
end

function love.update(dt)
    button:update(dt)
end

function love.draw()
    button:draw()
end
