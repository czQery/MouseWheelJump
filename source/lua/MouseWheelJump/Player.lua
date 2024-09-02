local oldOverrideInput = Player.OverrideInput
local oldSendKeyEvent = Player.SendKeyEvent
local isScrolling = false
local isEnabled = false

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
        isScrolling = false
        isEnabled = Client.GetOptionBoolean("mwjEnabled", false)
        if isEnabled then
            move.commands = bit.bor(move.commands, Move.Jump)
        end
    end
    return move
end