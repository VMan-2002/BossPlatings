--	so uhhh yeah
--	this is JUST GOLD PLATED!

BossPlatings = {
	platings = {},
	-- Check if a BossPlatings voucher level is owned
	has_voucher = function(i)
		return next(SMODS.find_card(({"v_bplating_blacksmith", "v_bplating_advanced", "v_bplating_reality"})[i]))
	end,
	-- Check if this card is considered "scored"
	is_scored = function(card, context, inplay, inhand, inconsumables)
		if card.area == G.jokers or (card.area == G.consumeables and BossPlatings.has_voucher(3) and inconsumables) then
			return context.joker_main
		elseif card.area == G.play and inplay then
			return context.main_scoring
		elseif card.area == G.hand and inhand then
			return context.individual
		end
	end,
	--Find applicable cards with platings with the given bossplating id (includes plating items when reality voucher)
	find_plating = function(key, inplay, inhand)
		local result = {}
		for _,area in pairs({G.jokers, inhand ~= false and G.hand, inplay ~= false and G.play}) do
			if area then
				for k,v in pairs(area.cards) do
					if v.ability.bossplating and v.ability.bossplating.key == key then
						table.insert(result, v)
					end
				end
			end
		end
		if BossPlatings.has_voucher(3) then
			for k,v in pairs(G.consumeables.cards) do
				if v.config.center.bossplatings_id == key then
					table.insert(result, v)
				end
			end
		end
		return result
	end
}

--Item
local ctype = SMODS.ConsumableType {
	key = "BossPlating",
	primary_colour = HEX("9B2D41"),
	secondary_colour = HEX("9B2D41"),
	loc_txt = {
		name = "Boss Plating",
		collection = "Boss Platings",
		undiscovered = {
			name = "Not Discovered",
			text = {"Defeat this Plating's","Boss Blind to","discover this"}
		}
	},
	inject_card = function(self, center)
		local bl = BossPlatings.platings[center.bossplatings_id]
		local b = G.P_BLINDS[bl.from] or SMODS.Blinds[bl.from]
		if b then
			local showdown = (b.boss and b.boss.showdown)
			center.cost = center.cost or (showdown and 15 or 5)
			center.pos = center.pos or {x = showdown and 9 or 8, y = 2}
		end
		center.loc_txt = G.localization.descriptions.BossPlating.bossplating_item
	end,
	collection_rows = {5,5,5},
	default = "c_bplating_plating_ox"
}
G.P_CENTER_POOLS[ctype.key] = {}
SMODS.Atlas {
	key = "bossplatings",
	path = "platings.png",
	px = 71,
	py = 95
}
local bossplatings_item_loc_vars = function(self, info_queue, card)
	local blind_key = "bl_"..BossPlatings.platings[self.bossplatings_id].from
	local bossplating_key = "bossplating_"..self.bossplatings_id
	local specificvars = BossPlatings.platings[self.bossplatings_id].specific_vars
	local specificvars_type = type(specificvars)
	info_queue[#info_queue + 1] = {set = "Other", key = bossplating_key,
		specific_vars = (specificvars_type == "table" and specificvars) or (specificvars_type == "function" and specificvars(BossPlatings.platings[self.bossplatings_id], card)) or nil
	}
	local blind = G.localization.descriptions.Blind[blind_key]
	local plating = G.localization.descriptions.Other[bossplating_key]
	local blindnameshort = blind and blind.name
	if blindnameshort then
		for k,v in pairs(localize("bossplatings_short_remove_start")) do
			if string.sub(blindnameshort, 1, string.len(v)) == v then
				blindnameshort = string.sub(blindnameshort, string.len(v) + 1)
				break
			end
		end
	end
	return {
		key = topuplib.viewedFromCollection(card) and "bossplating_collection_item" or "bossplating_item",
		vars = {blindnameshort, plating and plating.name or "Boss Plating", blind and blind.name, colours = {G.P_BLINDS[blind_key].boss_colour}}
	}
end
local bossplatings_can_use = function(self, card)
	if BossPlatings.has_voucher(2) and next(G.hand.highlighted) then
		return #G.hand.highlighted == 1 and not next(G.jokers.highlighted)
	end
	return #G.jokers.highlighted == 1
end
local bossplatings_use_on_cards = function(self, cards)
	for k,v in pairs(cards.highlighted) do
		local t = BossPlatings.platings[self.bossplatings_id]
		v.ability.bossplating = {
			key = self.bossplatings_id,
			ability = t.config and topuplib.tableShallowCopy(t.config) or nil
		}
		v.children.bossplating = nil
	end
end
local bossplatings_use = function(self, card, area)
	bossplatings_use_on_cards(self, G.jokers)
	if BossPlatings.has_voucher(2) then
		bossplatings_use_on_cards(self, G.hand)
	end
end

BossPlatings.add = function(data)
	local plating_id = SMODS.current_mod.prefix .. "_" .. data.key
	local blind = SMODS.Blinds["bl_"..data.key] or G.P_BLINDS["bl_"..data.key]
	local consumable_data = topuplib.tableShallowCopy(data)
	consumable_data.calculate = nil
	consumable_data.key = "plating_"..data.key
	consumable_data.bossplatings_id = plating_id
	consumable_data.loc_vars = data.loc_vars or bossplatings_item_loc_vars
	consumable_data.atlas = data.atlas or "bossplatings"
	consumable_data.set = "BossPlating"
	consumable_data.can_use = data.can_use or bossplatings_can_use
	consumable_data.use = data.use or bossplatings_use
	consumable_data.pools = {
		BossPlating = true,
		[(blind and blind.boss and blind.boss.showdown) and "BossPlatingShowdown" or "BossPlatingNormal"] = true
	}
	--consumable_data.omit = true
	local consumable = SMODS.Consumable(consumable_data)
	BossPlatings.platings[plating_id] = {
		item = consumable.key,
		item_center = consumable,
		from = data.key,
		calculate = data.calculate,
		config = data.config
	}
end

--TODO: Going to main and then returning gets you an extra plating
local round_eval_ref = Game.update_round_eval
function Game:update_round_eval(dt, ...)
	if not G.STATE_COMPLETE then
		BossPlatings.give_plating_on_victory()
	end
	return round_eval_ref(self, dt, ...)
end
BossPlatings.give_plating_on_victory = function()
	for _,v in pairs(BossPlatings.platings) do
		if "bl_"..v.from == G.GAME.blind.config.blind.key then
			SMODS.add_card{set = "BossPlating", key = v.item}
			break
		end
	end
end

--Eval Card
local eval_card_ref = eval_card
function eval_card(card, context, ...)
	local t, post = eval_card_ref(card, context, ...)
	
	--TODO: how in the world does this not fricking work the variables all check out but the game says no for some reason
	if card.ability.bossplating then
		local edition = BossPlatings.platings[card.ability.bossplating.key]
		if edition.calculate and type(edition.calculate) == 'function' then
			local o = edition:calculate(card, context)
			if o then
				if not o.card then o.card = card end
				post[#post+1] = o
			end
		end
	end
	return t, post
end

local rq = {
	"bossplatings_vanilla",
	"drawstep_bossplatings",
	"vouchers",
	"boosters",
	topuplib.debug and "bossplatings_testingcontent" or nil
}
for k, v in ipairs(rq) do
	if (type(k) == "number" or next(SMODS.find_mod(k))) and v ~= nil then
		local a = assert(SMODS.load_file("lua/"..v..".lua"))()
	end
end