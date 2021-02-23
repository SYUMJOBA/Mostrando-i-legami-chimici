local Keyboard = {}

local Key_states = {}

function Keyboard:update(dt)
    for key, value in pairs(key_states)do
        key_states[key] = nil
    end
    
end

-- Returns current state of a given key
function Keyboard:key(key)
    return love.keyboard.isDown(key)
end

-- Returns if the key has been __pressed__ JUST IN THIS FRAME
function Keyboard:key_pressed(key)
    return key_states[key]
end

-- Returns if the key has been ___released__ JUST IN THIS FRAME
function Keyboard:key_released(key)
    return key_states[key] == false
end

function Keyboard:hook_love_events()
    function love.keypressed(key, scancode, isrepeat)
        Key_states[key] = true
    end
    function love.keyreleased(key, scancode)
        Key_states[key] = false
        
    end
end

return Keyboard