BossPlatings.add({
	key = "ox",
	pos = {x=0,y=0},
	calculate = function(self, card, context)
	
	end
})

BossPlatings.add({
	key = "house",
	pos = {x=1,y=0},
	calculate = function(self, card, context)
	
	end
})

BossPlatings.add({
	key = "club",
	pos = {x=2,y=0},
	calculate = function(self, card, context)
	
	end
})

BossPlatings.add({
	key = "fish",
	pos = {x=3,y=0},
	calculate = function(self, card, context)
	
	end
})

BossPlatings.add({
	key = "window",
	pos = {x=4,y=0},
	calculate = function(self, card, context)
	
	end
})

BossPlatings.add({
	key = "hook",
	pos = {x=5,y=0},
	calculate = function(self, card, context)
	
	end
})

BossPlatings.add({
	key = "manacle",
	pos = {x=6,y=0},
	calculate = function(self, card, context)
	
	end
})

BossPlatings.add({
	key = "wall",
	pos = {x=7,y=0},
	calculate = function(self, card, context)
		if context.joker_main then
			print("Wall Joker Main Effect")
			return {x_mult = 1.5}
		end
	end
})

BossPlatings.add({
	key = "wheel",
	pos = {x=8,y=0},
	calculate = function(self, card, context)
	
	end
})

BossPlatings.add({
	key = "arm",
	pos = {x=9,y=0},
	calculate = function(self, card, context)
	
	end
})

BossPlatings.add({
	key = "psychic",
	pos = {x=0,y=1},
	calculate = function(self, card, context)
	
	end
})

BossPlatings.add({
	key = "goad",
	pos = {x=1,y=1},
	calculate = function(self, card, context)
	
	end
})

BossPlatings.add({
	key = "water",
	pos = {x=2,y=1},
	calculate = function(self, card, context)
	
	end
})

BossPlatings.add({
	key = "serpent",
	pos = {x=3,y=1},
	calculate = function(self, card, context)
	
	end
})

BossPlatings.add({
	key = "pillar",
	pos = {x=4,y=1},
	calculate = function(self, card, context)
	
	end
})

BossPlatings.add({
	key = "eye",
	pos = {x=5,y=1},
	calculate = function(self, card, context)
	
	end
})

BossPlatings.add({
	key = "mouth",
	pos = {x=6,y=1},
	calculate = function(self, card, context)
	
	end
})

BossPlatings.add({
	key = "plant",
	pos = {x=7,y=1},
	calculate = function(self, card, context)
	
	end
})

BossPlatings.add({
	key = "needle",
	pos = {x=8,y=1},
	calculate = function(self, card, context)
	
	end
})

BossPlatings.add({
	key = "head",
	pos = {x=9,y=1},
	calculate = function(self, card, context)
	
	end
})

BossPlatings.add({
	key = "tooth",
	pos = {x=0,y=2},
	calculate = function(self, card, context)
	
	end
})

BossPlatings.add({
	key = "mark",
	pos = {x=1,y=2},
	calculate = function(self, card, context)
	
	end
})

BossPlatings.add({
	key = "flint",
	pos = {x=2,y=2},
	calculate = function(self, card, context)
		if context.initial_scoring_step then
			return {x_mult = 1.15, x_chips = 1.15}
		end
	end
})

BossPlatings.add({
	key = "final_heart",
	pos = {x=3,y=2},
	calculate = function(self, card, context)
	
	end
})

BossPlatings.add({
	key = "final_bell",
	pos = {x=4,y=2},
	calculate = function(self, card, context)
	
	end
})

BossPlatings.add({
	key = "final_acorn",
	pos = {x=5,y=2},
	calculate = function(self, card, context)
	
	end
})

BossPlatings.add({
	key = "final_leaf",
	pos = {x=6,y=2},
	calculate = function(self, card, context)
	
	end,
	specific_vars = {0}
})

BossPlatings.add({
	key = "final_vessel",
	pos = {x=7,y=2},
	calculate = function(self, card, context)
	
	end
})