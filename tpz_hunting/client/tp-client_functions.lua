
local Prompts     = GetRandomIntInRange(0, 0xffffff)
local PromptsList = {}

--[[-------------------------------------------------------
 Handlers
]]---------------------------------------------------------

AddEventHandler("onResourceStop", function(resourceName)
    if resourceName ~= GetCurrentResourceName() then
        return
    end

    Citizen.InvokeNative(0x00EDE88D4D13CF59, Prompts) -- UiPromptDelete
  
    for i, v in pairs(Config.Locations) do
        if v.BlipHandle then
            RemoveBlip(v.BlipHandle)
        end

        if v.NPC then
            RemoveEntityProperly(v.NPC, GetHashKey(v.NPCData.Model))
        end

    end

    ClearPedTasks(PlayerPedId())

end)

--[[-------------------------------------------------------
 Prompts
]]---------------------------------------------------------

RegisterActionPrompts = function()

    for action, prompt in pairs (Config.Prompts) do

        local str      = prompt.label
        local keyPress = Config.Keys[prompt.key]
    
        local dPrompt = PromptRegisterBegin()
        PromptSetControlAction(dPrompt, keyPress)
        str = CreateVarString(10, 'LITERAL_STRING', str)
        PromptSetText(dPrompt, str)
        PromptSetEnabled(dPrompt, 1)
        PromptSetVisible(dPrompt, 1)
        PromptSetStandardMode(dPrompt, 1)
        PromptSetHoldMode(dPrompt, 500)
        PromptSetGroup(dPrompt, Prompts)
        Citizen.InvokeNative(0xC5F428EE08FA7F2C, dPrompt, true)
        PromptRegisterEnd(dPrompt)

        table.insert(PromptsList, {prompt = dPrompt, type = action} )
    end

end

function GetPromptData()
    return Prompts, PromptsList
end

--[[-------------------------------------------------------
 Blips Management
]]---------------------------------------------------------

Citizen.CreateThread(function ()

    if Config.Locations and GetTableLength(Config.Locations) > 0 then
        
        for index, blip in pairs (Config.Locations) do

            if blip.BlipData and blip.BlipData.Enabled then

                local blipHandle = N_0x554d9d53f696d002(1664425300, blip.Coords.x, blip.Coords.y, blip.Coords.z)
    
                SetBlipSprite(blipHandle, blip.BlipData.Sprite, 1)
                SetBlipScale(blipHandle, 0.1)
                Citizen.InvokeNative(0x9CB1A1623062F402, blipHandle, blip.BlipData.Title)

                    
                Config.Locations[index].BlipHandle = blipHandle

            end
    
        end

    end
end)

--[[-------------------------------------------------------
 Models Management
]]---------------------------------------------------------

LoadModel = function(model)
    local model = joaat(model)
    RequestModel(model)

    while not HasModelLoaded(model) do RequestModel(model)
        Citizen.Wait(100)
    end
end

RemoveEntityProperly = function(entity, objectHash)
    DeleteEntity(entity)
    DeletePed(entity)
    SetEntityAsNoLongerNeeded( entity )

    if objectHash then
        SetModelAsNoLongerNeeded(objectHash)
    end
end

SpawnNPC = function(index)
    local v = Config.Locations[index].NPCData

    if v.Enabled then
        
        LoadModel(v.Model) -- we load the model when we know npc is enabled. 

        local npc = CreatePed(v.Model, v.Coords.x, v.Coords.y, v.Coords.z, v.Coords.h, false, true, true, true)
        Citizen.InvokeNative(0x283978A15512B2FE, npc, true)
        SetEntityCanBeDamaged(npc, false)
        SetEntityInvincible(npc, true)
        
        Wait(500)
        
        FreezeEntityPosition(npc, true)
        SetBlockingOfNonTemporaryEvents(npc, true)
        Config.Locations[index].NPC = npc
    end
end

--[[-------------------------------------------------------
 General
]]---------------------------------------------------------

-- @GetTableLength returns the length of a table.
GetTableLength = function(T)
    local count = 0
    for _ in pairs(T) do count = count + 1 end
    return count
end
