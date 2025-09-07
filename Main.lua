--- ============================ HEADER ============================
--- ======= LOCALIZE =======
-- 获取插件名称和全局表
local addonName, Rotation = ...

local RL = RLib
local Utils = RL.Utils


RL.Rotation[addonName] = Rotation


function Rotation:Check()
    local className, classFilename, classId = UnitClass("player")
    local currentSpec = GetSpecialization()
    -- 职业和专精检查 --
    -- Utils.Print("职业检查: " .. className)
    -- Utils.Print("classFilename: " .. classFilename)
    -- Utils.Print("专精检查: " .. currentSpec)
    if (classFilename == "PALADIN") and (currentSpec == 2) then
        return true
    end
    return false
end

function Rotation:Init()
    Rotation.InitSettings()
    Utils.Print("PALADIN Init")
end
