local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/0x31454/hivality/refs/heads/main/UI/library.lua"))()
local flags = library.flags

local window = library:window({
    name = "Hivality", 
    size = UDim2.fromOffset(600, 500) 
})

local legit = window:tab({
    name = "legit"
})
local rage = window:tab({
    name = "rage"
})
local esp = window:tab({
    name = "esp"
})
local visuals = window:tab({
    name = "visuals"
})
local misc = window:tab({
    name = "misc"
})

local toggle = legit:section({name = "toggle"})

toggle:toggle({
    name = "Toggle",
    default = false,
    callback = function(enabled)
        if enabled then
            print("enabled")
        else
            print("disabled")
        end
    end,
})

toggle:dropdown({
    name = "activation", 
    items = {"mouse 1", "mouse 2", "always"}, 
    multi = false, 
    callback = function(option)
        print(option)
    end
})

toggle:slider({
    suffix = "%", 
    default = 90, 
    min = 0, 
    max = 100, 
    interval = 0.5,
    callback = function(num)
        print(num)
    end
})

toggle:colorpicker({
    name = "color",
    color = Color3.new(1, 1, 1),
    callback = function(color, alpha)
        print(color, alpha)
    end
})

local settings = misc:section({name = "UI"})

settings:keybind({
    name = "UI Bind", 
    default = Enum.KeyCode.RightShift, 
    callback = window.set_menu_visibility
})

settings:toggle({
    name = "Player List",
    default = false, 
    callback = function(bool)
    window.toggle_playerlist(bool)
    end
})

settings:toggle({
    name = "Watermark", 
    default = false, 
    callback = function(bool)
    window.toggle_watermark(bool)
end})
