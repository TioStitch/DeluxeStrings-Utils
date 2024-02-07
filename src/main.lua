
local dxStrings = require("deluxeStrings")

local function test()
    local text = "ABC1"
    local changable = dxStrings:getCharUntil(text, 1, 3)

    if (dxStrings:endsWith(text, "C1")) then
        print("Normal: " .. text)
    else
        print("DxStrings: " .. changable)
    end
end

test()