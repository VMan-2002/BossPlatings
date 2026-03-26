SMODS.Atlas {
	key = "vouchers",
	path = "vouchers.png",
	px = 71,
	py = 95
}

SMODS.Voucher {
	key = "blacksmith",
	atlas = "vouchers",
	pos = {x=0,y=0}
}

SMODS.Voucher {
	key = "advanced",
	requires = {"v_bplating_blacksmith"},
	atlas = "vouchers",
	pos = {x=1,y=0}
}

if Cryptid or topuplib.debug then
	SMODS.Voucher {
		key = "reality",
		requires = {"v_bplating_advanced"},
		atlas = "vouchers",
		pos = {x=2,y=0},
		in_pool = (not Cryptid) and topuplib.returnFalse or nil
	}
end