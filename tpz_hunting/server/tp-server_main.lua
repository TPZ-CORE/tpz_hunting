local TPZ    = {}
local TPZInv = exports.tpz_inventory:getInventoryAPI()

TriggerEvent("getTPZCore", function(cb) TPZ = cb end)


-----------------------------------------------------------
--[[ Functions ]]--
-----------------------------------------------------------

GiveFormattedItemRewards = function (source, formattedItemsList, type)
	local _source = source

	for k, v in pairs(formattedItemsList) do

		-- If somehow nmb is null, we set it as default which is "1"
		if v.quantity == nil then 
			v.quantity = 1 
		end

		v.quantity = math.random(v.quantity, v.quantity)

		if v.item then

			local canCarryItem  = TPZInv.canCarryItem(_source, v.item, v.quantity)

			if canCarryItem then

				TPZInv.addItem(_source, v.item, v.quantity)

				local itemLabel = TPZInv.getItemLabel(v.item)
				
				local notifyData = Locales['SUCCESSFULLY_OBTAINED']

				if type == "SKINNED" then
					notifyData = Locales['SUCCESSFULLY_OBTAINED_SKINNED']
				end
				
				TriggerClientEvent("tpz_notify:sendNotification", _source, notifyData.title, string.format(notifyData.message, v.quantity, itemLabel), notifyData.icon, "success", notifyData.duration)
			end

		end

	end

end

-----------------------------------------------------------
--[[ Events ]]--
-----------------------------------------------------------

RegisterServerEvent("tpz_hunting:server:reward")
AddEventHandler("tpz_hunting:server:reward", function(rewardType, data, removeEntity)
	local _source   = source
	local xPlayer   = TPZ.GetPlayer(_source)

	local money, cents, xp = 0, 0, 0

	local givenItem, givenAmount = {},{}

	local animal, found

	if rewardType == "SKINNED" then

		animal = Config.SkinnableAnimals[data.model]

		if animal then
			found = true

			givenItem    = animal.givenItem or {}
			givenAmount  = animal.givenAmount or {}
		end

	elseif rewardType == "PELT" then

		animal = Config.Animals[data.model]

		if animal then
			found = true

			money, cents, xp = animal.money or 0, animal.cents or 0, animal.xp or 0
			
			local multiplier = 1.0

			if (animal.qualityMultiplier[1] and animal.poor) and (data.quality == animal.quality[1]) then
				multiplier = animal.qualityMultiplier[1]

			elseif (animal.qualityMultiplier[2] and animal.good) and (data.quality == animal.quality[2]) then
				multiplier = animal.qualityMultiplier[2]
				
			elseif (animal.qualityMultiplier[3] and animal.perfect) and (data.quality == animal.quality[3]) then
				multiplier = animal.qualityMultiplier[3]
			end
			
			money, cents, xp = money * multiplier, cents * multiplier, xp * multiplier
		end

	elseif rewardType == "CARCASS" then

		animal = Config.Animals[data.model]

		if animal then
			found = true

			givenItem   = animal.givenItem or {}
			givenAmount = animal.givenAmount or {}

			money, cents, xp = animal.money or 0, animal.cents or 0, animal.xp or 0
		end
	end
	
	-- If for any reason the rewardType is false, we prevent the rest code for running.
	if not found then
		return
	end

	-- If removeEntity is enabled, we remove the entity which was sold in the butcher.
	if removeEntity then
		TriggerClientEvent('tpz_hunting:removeSoldEntity', _source, data.entity)
	end

	-- Giving TPZ Leveling experience Points if more than 0 and tpz_leveling is enabled.
	if Config.tpz_leveling and xp > 0 then
		TriggerEvent("tp_leveling:AddLevelExperience", _source, "hunting", xp)
	end

	local GivenMoneyList = {}

	if money > 0 then
		table.insert(GivenMoneyList, Locales['DOLLARS_SYMBOL'] .. money)
		xPlayer.addAccount(0, money)

	end

	if cents > 0 then
		table.insert(GivenMoneyList, Locales['CENTS_SYMBOL'] .. cents)
		xPlayer.addAccount(1, cents)
	end
		
	if #GivenMoneyList > 0 then
        local notifyData = Locales['ANIMAL_SOLD']

        TriggerClientEvent("tpz_notify:sendNotification", _source, notifyData.title, notifyData.message .. table.concat(GivenMoneyList, ", "), notifyData.icon, "success", notifyData.duration)
	end
		

	if #givenItem ~= #givenAmount then
		print('Error: Please ensure givenItem and givenAmount have the same length in the items config.')
		return
	end

	-- If given item list is available and has more than 0 contents, we create the item rewards.
	if givenItem and #givenItem > 0 then

		local formattedGivenItems = {}
		local total               = 0

		-- Format items and set random quantities if set.
		-- Check if items can be added
		-- total up the quantity so it can be checked as a whole

		for k, v in ipairs(givenItem) do
			local quantity = 0
			
			if type(givenAmount[k]) == "table" then
				quantity = math.random(tonumber(givenAmount[k][1]) or 0, tonumber(givenAmount[k][2]) or 1)

			else

				quantity = 1

				if givenAmount[k] > 0 then
					quantity = givenAmount[k]
				end
			end

			formattedGivenItems[k] = { quantity = quantity, item = v }

			total = total + quantity
		end

		Wait(250)

		GiveFormattedItemRewards(_source, formattedGivenItems, rewardType)

	end

end)

