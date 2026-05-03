SMODS.Atlas {
	key = "bossplatings_unik",
	path = "unik_platings.png",
	px = 71,
	py = 95
}

BossPlatings.add({
	key = "bplating_namta",
	pos = {x=1,y=0},
	atlas = "bossplatings_unik",
	calculate = function(self, card, context)
		
	end,
	bossplatings_loc_key = "bossplating_finity_combo",
	bossplatings_title_override = localize("bplating_name_namta"),
	loc_vars = function(self, info_queue, card)
		self.plating_col = G.C.UNIK_LARCEPTS1
		return BossPlatings.loc_vars(self, info_queue, card)
	end
})

SMODS.Consumable{
	set = 'unik_lartceps', 
	atlas = 'bossplatings_unik',
	cost = 0,
	pos = {x = 0, y = 0},
	key = 'lartceps_plating',
	config = {},
	can_use = function(self, card)
		return true
	end,
	no_doe = true,
	no_grc = true,
	no_ccd = true,
	use = function(self, card, area, copier)
		G.E_MANAGER:add_event(Event({
			func = (function() play_sound("unik_gore6") return true end)
		}))
		local cardsCount = math.ceil(#G.playing_cards * 0.5)
		local cards, i, card = topuplib.tableShallowCopy(G.playing_cards)
		while cardsCount ~= 0 do
			cardsCount = cardsCount - 1
			card = table.remove(cards, math.random(#cards))
			BossPlatings.apply(card, "bplatings_namta")
		end
		for _,v in G.jokers do
			BossPlatings.apply(v, "bplatings_namta")
		end
	end,
	loc_vars = function(self, info_queue, card)
		BossPlatings.loc_vars(SMODS.Centers.c_bplating_plating_bplating_namta, info_queue, card)
	end,
	in_pool = lartcepsCheck
}