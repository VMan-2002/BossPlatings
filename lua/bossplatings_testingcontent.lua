SMODS.Atlas {
	key = "bossplatings_testingcontent",
	path = "topuplib_platings.png",
	px = 71,
	py = 95
}

BossPlatings.add({
	key = "topuplib_infinit",
	pos = {x=0,y=0},
	atlas = "bossplatings_testingcontent",
	calculate = function(self, card, context)
		if context.joker_main then
			return {mult = 1e300, chips = 1e300}
		end
	end
})