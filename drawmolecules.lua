-- this function can be called to draw the atoms by themselves

function drawAtom(posX, posY, size)
    -- drawing the orbital
    love.graphics.setColor(1, 1, 1)
    love.graphics.circle("fill", posX, posY, size/2)

    love.graphics.setColor(0, 0, 0)
    love.graphics.circle("fill", posX, posY, (size/2)-1)

    -- drawing the nucleus
    love.graphics.setColor(1, 0, 0)
    love.graphics.circle("fill", posX, posY, size/6)
end