local oldOverrideInput = Player.OverrideInput
local oldSendKeyEvent = Player.SendKeyEvent
local isScrolling = false

function Player:SendKeyEvent(key, down)
    local event = oldSendKeyEvent(self, key, down)
    if key == InputKey.MouseWheelDown or key == InputKey.MouseWheelUp then
        isScrolling = true
    end
    return event
end

function Player:OverrideInput(input)
    local move = oldOverrideInput(self, input)
    if isScrolling then
        move.commands = bit.bor(move.commands, Move.Jump)
        isScrolling = false
    end
    return move
end