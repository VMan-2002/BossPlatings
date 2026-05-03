SMODS.Atlas(next(SMODS.find_mod("BlindAtlasOptimizer")) and {
	key = "blindchips",
	path = "blindchips_o.png",
	px = 34,
	py = 34,
	atlas_table = "ANIMATION_ATLAS",
	frames = 9,
	firstframes = 12
} or {
	key = "blindchips",
	path = "blindchips.png",
	px = 34,
	py = 34,
	atlas_table = "ANIMATION_ATLAS",
	frames = 21
})

SMODS.Blind {
	key = "mace",
	atlas = "blindchips",
	pos = {x=0,y=0},
	boss = {min = 3},
	boss_colour = SMODS.ConsumableTypes.BossPlating.primary_colour
}