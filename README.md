# LOVE2D-button
A simple librarie to create button with LÖVE 2D.

## Features:
* Execute function on click
* Can easily remove buttons with `button:delete()`
* You can easily modify the code ! (because it is very lite)

## How it's work:
* First step, require the librarie :
```lua
button = require "button.lua"
```

* Second step, adding `button:new()` to `love.load()`, `button:update(dt)` to `love.update(dt)` and `button:draw()` to `love.draw()`.
````lua
function love.load()
  button:new(--Put here your button)
end

function love.update(dt)
  button:update(dt)
end

function love.draw()
  button:draw()
end
````

* Third step, create your button in `love.load()` like this:
````lua
ExampleButton = {button:new(300, 150,150,100,{1,1,1}, "Example", {0,0,0}, function()print("Example")end)}
````
DONT FORGET !!! -> YOUR BUTTON IS A TABLE WITH THE `button:new()` INSIDE.

You can check the `example` folder to see an example LÖVE2D project with the librarie.

## Result:

![alt text](example.png)

## Before using the lib !
This project is not finished yet so you may encounter some bugs !
