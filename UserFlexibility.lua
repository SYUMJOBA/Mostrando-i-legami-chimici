UserFlexibility = {}

UserFlexibility.FullscreenChanging = function ()
    if love.keyboard.isDown("f11") and love.window.getFullscreen() == true then
        love.window.setFullscreen(false)
    elseif love.keyboard.isDown("f11") and love.window.getFullscreen() == false then
        love.window.setFullscreen(true)
    end
end