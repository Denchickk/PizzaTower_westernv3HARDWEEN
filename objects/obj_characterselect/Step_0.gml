if fart = false{
	ready = true
	scr_soundeffect(sfx_collecttoppin)
	obj_peppinoselect.sprite_index = spr_peppinoselected
	obj_peppinoselect.image_index = 0
	with obj_player1
	{
	character = "N"
	paletteselect = 2
	scr_characterspr()
	}
	

		with obj_player2
	{
	character = "P"
	scr_characterspr()
		if global.coop = true
		{
		obj_noiseselect.sprite_index = spr_noiseselected
	obj_noiseselect.image_index = 0
		}
	}
	fart = true
	alarm[0] = 100
}
