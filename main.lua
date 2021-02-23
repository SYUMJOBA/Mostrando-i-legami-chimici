function love.load()
    DrawMolecules = require "drawmolecules"
    UserFlexibility = require "UserFlexibility"
    love.window.setFullscreen(true)
end

function love.update()
    UserFlexibility.FullscreenChanging()
end

function love.draw()
    DrawMolecules.drawAtom(50, 50, 100)
end