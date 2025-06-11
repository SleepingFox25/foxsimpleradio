local isTalkingOnRadio = false
local lastAnimPlayed = nil

-- Hook sur pma-voice
RegisterNetEvent('pma-voice:radioActive', function(isActive)
    local ped = PlayerPedId()

    if isActive and not isTalkingOnRadio then
        local animType = GetRadioAnimationForClothes(ped)

        if animType == "default" then
            ExecuteCommand('e wt4')
        else
            local anim = Config.Animations[animType]

            RequestAnimDict(anim.dict)
            while not HasAnimDictLoaded(anim.dict) do Wait(10) end

            TaskPlayAnim(ped, anim.dict, anim.anim, 8.0, -8.0, -1, 49, 0.0, false, false, false)
        end

        isTalkingOnRadio = true

    elseif not isActive and isTalkingOnRadio then
        if animType == "default" then
            ExecuteCommand('emotecancel')
        else
            ClearPedTasks(ped)
            ExecuteCommand('emotecancel')
        end

        isTalkingOnRadio = false
    end
end)

function GetRadioAnimationForClothes(ped)
    local sex = GetPedSex(ped)
    local clothingConfig = Config.RadioClothing[sex]

    for componentId, drawables in pairs(clothingConfig) do
        local drawable = GetPedDrawableVariation(ped, componentId)
        local texture = GetPedTextureVariation(ped, componentId)

        if drawables[drawable] and drawables[drawable][texture] then
            return drawables[drawable][texture]
        end
    end

    return "default"
end



function GetPedSex(ped)
    local model = GetEntityModel(ped)
    if model == GetHashKey("mp_f_freemode_01") then
        return "female"
    else
        return "male"
    end
end
