
-----------------------------------------------------------
--[[ Events ]]--
-----------------------------------------------------------

RegisterNetEvent('tpz_hunting:client:deleteEntity')
AddEventHandler('tpz_hunting:client:deleteEntity', function(entity)

    if entity then

        DeleteEntity(entity)

        -- Must be called from a background script, otherwise it will do nothing.
        Citizen.InvokeNative(0x5E94EA09E7207C16, entity) -- DeleteEntity2

        DeletePed(entity)
        SetEntityAsNoLongerNeeded(entity)

    end

end)

-----------------------------------------------------------
--[[ Functions ]]--
-----------------------------------------------------------

RewardBasedOnPeltQuality = function(quality, entity, cb)
    local skinFound  = false
    local foundModel = nil

    for k, v in pairs(Config.Animals) do

        -- We are checking if the quality of that pelt equals to any of the animals.
        if (quality == v.perfect) or (quality == v.good) or (quality == v.poor) then
            foundModel = k
			skinFound  = true
			break
		end
    end

    if skinFound then
        TriggerServerEvent("tpz_hunting:server:reward", "PELT", { model = foundModel, quality = quality, entity = entity }, true)
		cb()
    end
end

SellButcherAnimal = function() -- Selling animal function

    local holding              = Citizen.InvokeNative(0xD806CD2A4F2C2996, PlayerPedId()) -- ISPEDHOLDING
    local hasSoldHoldingAnimal = false

    -- Checking if player is holding an animal and if that animal has already been sold or not.
    -- Checking if has been sold is for avoiding any kind of glitches.
    if holding and not hasSoldHoldingAnimal then 

        -- Returns the quality of the animal which the player is holding.
        local quality = Citizen.InvokeNative(0x31FEF6A20F00B963, holding)

        -- Returns the model of the animal which the player is holding.
        local model   = GetEntityModel(holding)
        
        if holding then

            local entityNetworkId = NetworkGetNetworkIdFromEntity(holding)

            SetNetworkIdExistsOnAllMachines(entityNetworkId, true)

            local entityId = NetworkGetEntityFromNetworkId(entityNetworkId)
            
            NetworkRequestControlOfEntity(entityId)
            NetworkRequestControlOfNetworkId(entityNetworkId)

            while not NetworkHasControlOfEntity(entityId) do
                Wait(10)
            end
        end

        -- We are checking if the model is an animal, if is an animal, we pay for that.
        -- Otherwise, it if not an animal, it is a skin / pelt and we run the code below else statement.
        if Config.Animals[model] then
            hasSoldHoldingAnimal = true
            
			TriggerServerEvent("tpz_hunting:giveAnimalReward", "CARCASS", { model = model, entity = holding }, true)
        
        else 

            RewardBasedOnPeltQuality(quality, holding, function () hasSoldHoldingAnimal = true end)

        end
    end

    -- In case the animal or pelt has not been sold for any reason, we send a notification.
    -- Includes if the player is not holding anything and presses to sell.
    if not hasSoldHoldingAnimal then

        local notifyData = Locales['NOT_HOLDING_ANIMAL']

        if holding then
            notifyData = Locales['BLACKLISTED_ANIMAL']
        end

        TriggerEvent("tpz_notify:sendNotification", notifyData.title, notifyData.message, notifyData.icon, "error", notifyData.duration)

    end
end


-----------------------------------------------------------
--[[ Threads ]]--
-----------------------------------------------------------


-- The following thread is checking for animals skin, plucked and stored.
Citizen.CreateThread(function()

    while true do
        Citizen.Wait(0)

        local size = GetNumberOfEvents(0)

        if size > 0 then

            for index = 0, size - 1 do
                local event = GetEventAtIndex(0, index)
                if event == 1376140891 then

                    local view = exports["tpz_hunting"]:DataViewNativeGetEventData(0, index, 3)
                    
                    local pedGathered = view['2']
                    local ped         = view['0']
                    local unk         = view['4']

                    local model       = GetEntityModel(pedGathered)

                    if Config.Debug and model and PlayerPedId() == ped then
                        print('Animal Gathered: ' .. model)
                    end

                    -- Ensure the player who enacted on the event is the one who must get the rewards
                    if model and Config.SkinnableAnimals[model] and PlayerPedId() == ped and unk == 1 then

                        -- The following event is giving rewards upon animal skinning.
                        TriggerServerEvent("tpz_hunting:server:reward", "SKINNED", { model = model }, false )
                    end

                end
            end

        end
    end
end)
