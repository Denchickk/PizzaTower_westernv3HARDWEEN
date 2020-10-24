hsp = image_xscale * movespeed





mask_index = spr_player_mask

if scr_solid(x,y+1) && vsp > 0
{
	vsp = -5
	if movespeed > 0
movespeed -= 1
}

if obj_player1.key_shoot2 && obj_player1.state != states.dynamite
{
instance_destroy()
instance_create(x,y,obj_dynamiteexplosion)
}


if  place_meeting(x+hsp,y,obj_solid) or place_meeting(x+hsp,y+vsp,obj_destructibles) or place_meeting(x,y,obj_baddie)
{
image_xscale *= -1
}


if  place_meeting(x+hsp,y+vsp,obj_destructibles) or place_meeting(x+hsp,y+vsp,obj_metalblockescape) or  place_meeting(x+hsp,y+vsp,obj_metalblock) or place_meeting(x,y,obj_baddie)
{
instance_destroy()
instance_create(x,y,obj_dynamiteexplosion)
}

if countdown <= 0
{
instance_destroy()
instance_create(x,y,obj_dynamiteexplosion)
}



//Flash 
if sprite_index = spr_dynamite && countdown < (120/2)
sprite_index = spr_dynamiteabouttoexplode



//Countdown for explosion

if sprite_index = spr_dynamite or sprite_index = spr_dynamiteabouttoexplode
countdown --	






scr_collide()