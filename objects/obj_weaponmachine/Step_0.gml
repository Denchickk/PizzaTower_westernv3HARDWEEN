if place_meeting(x,y+1,obj_player) && obj_player.vsp < 0 && global.pizzacoin >= 4 && image_speed = 0
{
	scr_soundeffect(sfx_buyweapon)
	global.pizzacoin -= 4
	image_speed = 0.35
	
	// SAGE2019
	
	if global.snickchallenge = true
	global.SAGEshotgunsnicknumber += 1

}
