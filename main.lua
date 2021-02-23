function love.load()
    require "drawmolecules"
    require "UserFlexibility"
    love.window.setFullscreen(true)
end

function love.update()
    UserFlexibility.FullscreenChanging()
end

function love.draw()
    drawAtom(50, 50, 100)
end