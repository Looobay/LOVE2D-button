# LOVE2D-button
A simple librarie to create button with LÖVE 2D.

## Features:
* Exectue function on click
* Can easily remove buttons with `button:delete()`

## How it's work:
* First step, require the librarie :
```lua
require "button.lua"
```

* Second step, adding `button:new()` to `love.load()`, `button:update(dt)` to `love.update(dt)` and `button:draw()` to `love.draw()`.

* Third step, create your button in `love.load()` like this:
````lua
ExampleButton = {button:new(300, 150,150,100,{1,1,1}, "Example", {0,0,0}, function()print("Example")end)}
````

You can check the `example` folder to see an example LÖVE2D project with the librarie.

## Result:

![alt text](example.png)

## Before using the lib !
This project is not finished yet so you may encounter some bugs !
