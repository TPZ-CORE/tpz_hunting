
--[[-------------------------------------------------------
 Threads
]]---------------------------------------------------------

Citizen.CreateThread(function()
    RegisterActionPrompts()

    while true do
        Citizen.Wait(0)

        local sleep        = 1000

        local player       = PlayerPedId()
        local coords       = GetEntityCoords(player)
        local isPlayerDead = IsEntityDead(player)

        if isPlayerDead then 
            goto END
        end

        for index, locationConfig in pairs(Config.Locations) do

            local distance = #(coords - vector3(locationConfig.Coords.x, locationConfig.Coords.y, locationConfig.Coords.z))

            if ( distance > Config.NPCRenderingDistance ) then
                
                if locationConfig.NPC then
      
                    RemoveEntityProperly(locationConfig.NPC, GetHashKey(locationConfig.NPCData.Model))
                    Config.Locations[index].NPC = nil
                end

            end

            if distance <= Config.NPCRenderingDistance and not locationConfig.NPC and locationConfig.NPCData.Enabled then
                SpawnNPC(index)
            end

            if distance <= locationConfig.ActionDistance then
                sleep = 0

                local promptGroup, promptList = GetPromptData()

                local label = CreateVarString(10, 'LITERAL_STRING', Locales['PROMPT_ACTION'])
                PromptSetActiveGroupThisFrame(promptGroup, label)

                for index, prompt in pairs (promptList) do

                    if not Config.Prompts['STORE'].enabled and prompt.type == 'STORE' then
                        PromptSetEnabled(prompt.prompt, 0)
                        PromptSetVisible(prompt.prompt, 0)
                    end

                    if PromptHasHoldModeCompleted(prompt.prompt) then

                        if prompt.type == 'SELL' then
                            SellButcherAnimal()

                        elseif prompt.type == 'STORE' then
                            Wait(500)
                            exports.tp_stores:openStoreByName('BUTCHER')
                        end

                        Wait(2000)
                    end

                    
                end

            end

        end
       
        ::END::
        Wait(sleep)
    end
end)
