
--[[-------------------------------------------------------
 Threads
]]---------------------------------------------------------

Citizen.CreateThread(function()
    RegisterActionPrompt()

    while true do
        Citizen.Wait(0)

        local sleep  = true

        local player = PlayerPedId()

        local coords = GetEntityCoords(PlayerPedId())
        local hour   = GetClockHours()
        local isDead = IsEntityDead(player)

        if not isDead then

            for index, locationConfig in pairs(Config.Locations) do

                local coordsDist = vector3(coords.x, coords.y, coords.z)
                local coordsStore = vector3(locationConfig.Coords.x, locationConfig.Coords.y, locationConfig.Coords.z)
                local distance = #(coordsDist - coordsStore)

                if ( distance > Config.NPCRenderingDistance ) then
                    
                    if Config.Locations[index].NPC then
                        DeleteEntity(Config.Locations[index].NPC)
                        DeletePed(Config.Locations[index].NPC)
                        SetEntityAsNoLongerNeeded(Config.Locations[index].NPC)
                        Config.Locations[index].NPC = nil
                    end

                end

                if distance <= Config.NPCRenderingDistance and not Config.Locations[index].NPC and locationConfig.NPCData.Enabled  then
                    SpawnNPC(index)
                end

                if distance <= locationConfig.ActionDistance then
                    sleep = false

                    local label = CreateVarString(10, 'LITERAL_STRING', Config.PromptKey.label)
    
                    PromptSetActiveGroupThisFrame(Prompts, label)

                    if PromptHasHoldModeCompleted(PromptsList) then

                        SellButcherAnimal()

                        Wait(2000)
                    end
    
                end

            end
        end

        if sleep then
            Citizen.Wait(1000)
        end
    end
end)
