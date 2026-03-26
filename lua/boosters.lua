SMODS.Atlas {
	key = "boosters",
	path = "boosters.png",
	px = 71,
	py = 95
}

BossPlatings.booster_loc_vars = function(self, info_queue, card)
	local key
	if BossPlatings.has_voucher(2) then
		key = self.key .. "_alt"
	end
	return {key = key, vars = {card.ability.choose, card.ability.extra}}
end

BossPlatings.booster_in_pool = function(self)
	if not BossPlatings.has_voucher(1) then
		return false
	end
	if self.key ~= "p_bplatings_showdown" then
		return true
	elseif G.GAME.current_ante > G.GAME.win_ante then
		return (G.GAME.current_ante > G.GAME.win_ante * 2)
			or (SMODS.pseudorandom_probability(nil, 1, 40 + ((G.GAME.win_ante * 2) - G.GAME.current_ante), "bplatings_showdown_booster", true))
	end
end

BossPlatings.booster_create_card = function(self, card)
	local set = "BossPlatingNormal"
	if self.key == "p_bplatings_showdown" or SMODS.pseudorandom_probability(card, 1, math.max(400 - (G.GAME.current_ante * 7), 50), "bplatings_booster_probable_showdown", true) then
		set = "BossPlatingShowdown"
	end
	return {set = set, area = G.pack_cards, skip_materialize = true}
end

SMODS.Booster {
	key = "standard",
	atlas = "boosters",
	pos = {x=0,y=0},
	draw_hand = true, --TODO: this should be true only when you have the cba voucher
	config = {extra = 3, choose = 1},
	loc_vars = BossPlatings.booster_loc_vars,
	group_key = "k_booster_group_bossplating",
	in_pool = BossPlatings.booster_in_pool,
	create_card = BossPlatings.booster_create_card
}

SMODS.Booster {
	key = "jumbo",
	atlas = "boosters",
	pos = {x=1,y=0},
	draw_hand = true,
	config = {extra = 5, choose = 1},
	loc_vars = BossPlatings.booster_loc_vars,
	group_key = "k_booster_group_bossplating",
	in_pool = BossPlatings.booster_in_pool,
	create_card = BossPlatings.booster_create_card
}

SMODS.Booster {
	key = "mega",
	atlas = "boosters",
	pos = {x=2,y=0},
	draw_hand = true,
	config = {extra = 5, choose = 2},
	loc_vars = BossPlatings.booster_loc_vars,
	group_key = "k_booster_group_bossplating",
	in_pool = BossPlatings.booster_in_pool,
	create_card = BossPlatings.booster_create_card
}

SMODS.Booster {
	key = "showdown",
	atlas = "boosters",
	pos = {x=3,y=0},
	draw_hand = true,
	config = {extra = 3, choose = 1},
	loc_vars = BossPlatings.booster_loc_vars,
	group_key = "k_booster_group_bossplating",
	in_pool = BossPlatings.booster_in_pool,
	create_card = BossPlatings.booster_create_card
}