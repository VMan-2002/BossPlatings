return {
	misc = {
		dictionary = {
			bossplatings_short_remove_start = {
				"The "
			},
			k_booster_group_bossplating = "Plating Pack",
			bplating_name_namta = "Namta"
		}
	},
	descriptions = {
		BossPlating = {
			bossplating_item = {
				name = "#1# Plating",
				text = {
					"Use to apply",
					"{V:1}#2#",
					"to a selected Joker"
				}
			},
			bossplating_item_advanced = {
				name = "#1# Plating",
				text = {
					"Use to apply",
					"{V:1}#2#",
					"to a selected Joker",
					"or playing card"
				}
			},
			bossplating_collection_item = {
				name = "#1# Plating",
				text = {	
					"Use to apply",
					"{V:1}#2#",
					"to a selected Joker",
					"{C:inactive}Earned upon defeating",
					"{C:inactive}#3#",
				}
			}
		},
		Voucher = {
			v_bplating_blacksmith = {
				name = "Phoenician Blacksmith",
				text = {
					"{C:bossplating}Plating Packs{} can",
					"appear in the Shop"
				}
			},
			v_bplating_advanced = {
				name = "Card Battalion Advanced",
				text = {
					"{C:bossplating}Boss Platings{} can be",
					"attached to playing cards"
				}
			},
			v_bplating_reality = {
				name = "Detached from Reality",
				text = {
					"{C:bossplating}Boss Platings{} held in consumable",
					"area trigger their effects",
					"{C:inactive}(if possible)"
				}
			}
		},
		Other = {
			bossplating_finity_combo = {
				name = "Finity Combo",
				text = {
					"Try pairing this Plating",
					"with it's respective",
					"Showdown Joker..."
				}
			},
			--Vanilla
			bossplating_bplating_hook = {
				name = "Claw Closed",
				text = topuplib.asub {
					"{_A:mult:+1} per card",
					"discarded this round",
					"{_A:currentmult:+0}"
				}
			},
			bossplating_bplating_ox = {
				name = "Bull Bronzed",
				text = topuplib.asub {
					"{_A:chips:+2} per {_A:money:1} if hand is",
					"not most played poker hand",
					"{_A:currentchips:+0}"
				}
			},
			bossplating_bplating_house = {
				name = "Mansion Masoned",
				text = topuplib.asub {
					"After playing or discarding,",
					"reveal all face-down cards"
				}
			},
			bossplating_bplating_wall = {
				name = "Great Wall Galvanized",
				text = topuplib.asub {
					"{_A:xmult:1.5}"
				}
			},
			bossplating_bplating_wheel = {
				name = "Motor Mastered",
				text = topuplib.asub {
					"{C:green}1 in 2{} chance for cards",
					"to be drawn face-up",
					"despite Boss Blind"
				}
			},
			bossplating_bplating_arm = {
				name = "Flex Flamed",
				text = topuplib.asub {
					"Level up played poker hand",
					"at end of round"
				}
			},
			bossplating_bplating_club = {
				name = "Clover Cluttered",
				text = topuplib.asub {
					"{_A:mult:+2} Mult per scored",
					"card of Club suit"
				}
			},
			bossplating_bplating_fish = {
				name = "Shark Sharpened",
				text = topuplib.asub {
					"{_A:mult:+1} for each face-down",
					"card scored or held in hand"
				}
			},
			bossplating_bplating_psychic = {
				name = "Magician Modelled",
				text = topuplib.asub {
					"{_A:xmult:1.1} per",
					"scored card"
				}
			},
			bossplating_bplating_goad = {
				name = "Halberd Hardened",
				text = topuplib.asub {
					"+15 Chips per scored",
					"card of Spade suit"
				}
			},
			bossplating_bplating_water = {
				name = "Ocean Optimized",
				text = topuplib.asub {
					"{C:blue}+1{} hand per round"
				}
			},
			bossplating_bplating_water_deck = {
				name = "Ocean Optimized",
				text = topuplib.asub {
					"{C:green}1 in 2{} chance to gain",
					"{C:blue}+1{} hand when scored"
				}
			},
			bossplating_bplating_window = {
				name = "Palladian Prized",
				text = topuplib.asub {
					"{C:green}1 in 2{} chance to",
					"earn {_A:money:1} per scored",
					"card of Diamond suit"
				}
			},
			bossplating_bplating_manacle = {
				name = "Cage Covered",
				text = topuplib.asub {
					"{_A:chips:+100}",
					"{C:attention}-1{} hand size"
				}
			},
			bossplating_bplating_eye = {
				name = "Observer Ornated",
				text = topuplib.asub {
					"{_A:mult:+2} per unique",
					"poker hand played this ante",
					"{_A:currentmult:+0}"
				}
			},
			bossplating_bplating_mouth = {
				name = "Maw Maladjusted",
				text = topuplib.asub {
					"Adds the number of times",
					"{C:attention}other poker hands{} have been",
					"played this run to Mult"
				}
			},
			bossplating_bplating_plant = {
				name = "Garden Gilded",
				text = topuplib.asub {
					"Copy Joker's effect once",
					"for every {C:attention}2{} face cards",
					"in scoring hand"
				}
			},
			bossplating_bplating_serpent = {
				name = "Naga Neated",
				text = topuplib.asub {
					"{C:attention}+1{} hand size"
				}
			},
			bossplating_bplating_pillar = {
				name = "Tower Textured",
				text = topuplib.asub {
					"Cards played this ante",
					"are drawn last"
				}
			},
			bossplating_bplating_needle = {
				name = "Rapier Ruptured",
				text = topuplib.asub {
					"Earn {_A:money:2} if hand is",
					"played with 0 discards used"
				}
			},
			bossplating_bplating_head = {
				name = "Bust Beautied",
				text = topuplib.asub {
					"{C:green}1 in 3{} chance for",
					"{_A:xmult:1.25} per scored",
					"card of {_A:hearts} suit"
				}
			},
			bossplating_bplating_tooth = {
				name = "Fang Flourished",
				text = topuplib.asub {
					"{_A:mult:+1} for each {_A:money:5}",
					"{_A:currentmult:+0}"
				}
			},
			bossplating_bplating_flint = {
				name = "Fire Fitted",
				text = topuplib.asub {
					"{_A:basexmult:1.15} and",
					"{_A:basexchips:1.15}"
				}
			},
			bossplating_bplating_mark = {
				name = "Landmark Lavished",
				text = topuplib.asub {
					"{C:green}1 in 3{} chance for",
					"face-down cards to",
					"ignore hand size limit"
				}
			},
			bossplating_bplating_mark_deck = {
				name = "Landmark Lavished",
				text = topuplib.asub {
					"Retrigger all face-down cards",
					"held in hand or scored"
				}
			},
			bossplating_bplating_final_acorn = {
				name = "Amber Acorn's Forest",
				text = topuplib.asub {
					"{_A:xmult:0.5} for each",
					"face down card or Joker",
					"{_A:currentxmult:+1}"
				}
			},
			bossplating_bplating_final_leaf = {
				name = "Verdant Leaf's Blossom",
				text = topuplib.asub {
					"{_A:mult:+3} for each card",
					"{C:attention}sold{} this run",
					"{_A:currentmult:+0}"
				}
			},
			bossplating_bplating_final_vessel = {
				name = "Violet Vessel's Swallow",
				text = topuplib.asub {
					"{_A:xmult:2}",
					"{_A:xmult:1.5} every {C:attention}3{} times attached",
					"card triggers this hand"
				}
			},
			bossplating_bplating_final_heart = {
				name = "Crimson Heart's Beating",
				text = topuplib.asub {
					"{C:attention}Debuffed cards{} held in hand",
					"give {_A:mult:+40}"
				}
			},
			bossplating_bplating_final_bell = {
				name = "Cerulean Bell's Chime",
				text = topuplib.asub {
					"Copies effect of 2",
					"randomly selected Jokers",
					"each round"
				}
			},
			bossplating_bplating_final_bell_deck = {
				name = "Cerulean Bell's Chime",
				text = topuplib.asub {
					"Retrigger half (rounded down)",
					"of played cards {C:attention}1{} additional time"
				}
			},
			--TopUpLib
			bossplating_bplating_topuplib_infinit = {
				name = "Top Plating",
				text = topuplib.asub {
					"{C:attention}+1.0e300{} Mult and Chips"
				}
			},
			bossplating_bplating_topuplib_debuff = {
				name = "Disapproving Plating",
				text = topuplib.asub {
					"Debuffs attached card"
				}
			},
			bossplating_bplating_topuplib_notallowed = {
				name = "Prohibitive Plating",
				text = topuplib.asub {
					"Hands containing this",
					"card are not allowed"
				}
			},
			--Cryptid
			bossplating_bplating_cry_clock = {
				name = "Speed Sanded",
				text = topuplib.asub {
					"{_A:mult:+10} if hand played",
					"at most 5 seconds after",
					"Blind selected"
				}
			},
			bossplating_bplating_cry_landlord = {
				name = "Investment Ionized",
				text = topuplib.asub {
					"Earn {_A:money:5} for each",
					"Rental Joker owned at",
					"end of round"
				}
			},
			bossplating_bplating_cry_landlord_deck = {
				name = "Investment Ionized",
				text = topuplib.asub {
					"Earn {_A:money:3} for each",
					"Rental Joker when scored"
				}
			},
			--Paperback
			bossplating_bplating_paperback_coda = {
				name = "Final Fastening",
				text = topuplib.asub {
					"{_A:mult:+4} per consecutive hand",
					"played without adding, moving",
					"or removing Jokers",
					"{_A:currentmult:+0}"
				}
			},
			bossplating_bplating_paperback_hold = {
				name = "Carry Chromed",
				text = topuplib.asub {
					"Left half (rounded down)",
					"of played cards are",
					"returned to hand"
				}
			},
			bossplating_bplating_paperback_glissando = {
				name = "Ascension Adorned",
				text = topuplib.asub {
					"Scoring hand is repeated"
				}
			},
			bossplating_bplating_paperback_final_bass = {
				name = "Misty Bass's Foundation",
				text = topuplib.asub {
					"Copies effect of",
					"other Boss Platings"
				}
			},
			--Boss Platings
			bossplating_bplating_bplating_mace = {
				name = "Mace Malformed",
				text = topuplib.asub {
					"{_A:xmult:0.25} for each {C:attention}Joker",
					"without a {C:bossplating}Boss Plating",
					"{_A:currentxmult:1}"
				}
			},
			bossplating_bplating_bplating_mace_deck = {
				name = "Mace Malformed",
				text = topuplib.asub {
					"{_A:mult:+6} for each",
					"card in {C:attention}played hand",
					"without a {C:bossplating}Boss Plating",
					"{_A:currentmult:+0}"
				}
			},
			--Unik's Mod
			bossplating_bplating_bplating_namta = {
				name = "Straitjacket Slashed",
				text = topuplib.asub {
					"Add 10 {X:unik_lartceps_inverse,C:unik_lartceps1}Namta{} cards to deck",
					"when sold or destroyed",
					"{C:green}1 in 5{} chance to {C:red}debuff",
					"Joker when Blind is selected"
				}
			},
			bossplating_bplating_bplating_namta_deck = {
				name = "Straitjacket Slashed",
				text = topuplib.asub {
					"Convert into a {X:unik_lartceps_inverse,C:unik_lartceps1}Namta{} card",
					"if held in hand",
					"{_A:emult:0.8} when scored"
				}
			},
			--Booster Packs
			p_bplating_standard = {
				name = "Plating Pack",
				text = {
					"Select {C:attention}#1#{} of {C:attention}#2#",
					"{C:bossplating}Boss Platings{} to",
					"attach to a Joker"
				}
			},
			p_bplating_jumbo = {
				name = "Jumbo Plating Pack",
				text = {
					"Select {C:attention}#1#{} of {C:attention}#2#",
					"{C:bossplating}Boss Platings{} to",
					"attach to Jokers"
				}
			},
			p_bplating_mega = {
				name = "Mega Plating Pack",
				text = {
					"Select {C:attention}#1#{} of {C:attention}#2#",
					"{C:bossplating}Boss Platings{} to",
					"attach to Jokers"
				}
			},
			p_bplating_showdown = {
				name = "Showdown Plating Pack",
				text = {
					"Select {C:attention}#1#{} of {C:attention}#2#",
					"{C:bossplating}Showdown Boss Platings{} to",
					"attach to Jokers"
				}
			},
			p_bplating_standard_alt = {
				name = "Plating Pack",
				text = {
					"Select {C:attention}#1#{} of {C:attention}#2#",
					"{C:bossplating}Boss Platings{} to",
					"attach to a card"
				}
			},
			p_bplating_jumbo_alt = {
				name = "Jumbo Plating Pack",
				text = {
					"Select {C:attention}#1#{} of {C:attention}#2#",
					"{C:bossplating}Boss Platings{} to",
					"attach to cards"
				}
			},
			p_bplating_mega_alt = {
				name = "Mega Plating Pack",
				text = {
					"Select {C:attention}#1#{} of {C:attention}#2#",
					"{C:bossplating}Boss Platings{} to",
					"attach to cards"
				}
			},
			p_bplating_showdown_alt = {
				name = "Showdown Plating Pack",
				text = {
					"Select {C:attention}#1#{} of {C:attention}#2#",
					"{C:bossplating}Showdown Boss Platings{} to",
					"attach to cards"
				}
			}
		},
		Blind = {
			bl_bplating_mace = {
				name = "The Mace",
				text = {
					"Disable effects of",
					"all Boss Platings"
				}
			}
		},
		unik_lartceps = {
			c_bplating_lartceps_plating = {
				name = "Iron Maiden",
				text = {
					"Apply {C:unik_lartceps1}Straitjacket Slashed",
					"to all owned Jokers and",
					"half of full deck"
				}
			}
		}
	}
}