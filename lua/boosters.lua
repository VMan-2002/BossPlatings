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

BossPlatings.booster_in_pool = function()
	return BossPlatings.has_voucher(1)
end

BossPlatings.booster_create_card = function()
	return {set = "BossPlating", area = G.pack_cards, skip_materialize = true}
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