--TODO: The sprite doesn't properly overlay on top of the card

SMODS.DrawStep {
	key = "bossplating",
	order = 20.7,
	conditions = {
		vortex = false
	},
	func = function(card, layer)
		if card.ability.bossplating == nil then
			return
		elseif not card.children.bossplating then
			local p = BossPlatings.platings[card.ability.bossplating.key]
			local spr = Sprite(card.T.x, card.T.y, card.T.w, card.T.h, G.ASSET_ATLAS[p.item_center.atlas or "bplating_bossplatings"], p.item_center.pos)
			card.children.bossplating = spr
			spr.states.hover = card.states.hover
			spr.states.click = card.states.click
			spr.states.drag = card.states.drag
			spr.states.collide.can = false
			spr:set_role({major = card, role_type = 'Glued', draw_major = card})
		end
	end
}