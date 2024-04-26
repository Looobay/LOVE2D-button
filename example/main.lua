button = require "button"

function love.load()
    ExampleButton = {button:new(
        300, 
        150,
        150,
        100,
        {1,1,1}, 
        {1,0,1}, 
        "Example", 
        {0,0,0}, 
        function()
            print("Hello")
        end)}
end

function love.update(dt)
    button:update(dt)
end

function love.draw()
    button:draw()
end
