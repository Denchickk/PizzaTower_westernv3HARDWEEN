

if obj_player.x < (x +100) && obj_player.x >= (x - 100) && obj_player.y > y
{
if activated = false 
{

	grav = 0.5
activated  = true	
image_speed = 0.35
}
}


if place_meeting(x,y,obj_player) && activated = true && hitwall = false && obj_player.state != states.stunned
{
	with (obj_player)
	{
		if scr_transformationcheck()
		if grounded
		{
		if place_meeting(x,y+1,obj_platform) && !place_meeting(x,y+1,obj_solid)
		y += 1
		
	state = states.stunned
	sprite_index = spr_squished
	image_index = 0
		}
	}
}

if activated = true && vsp > 0 && scr_solid(x,y+1)
hsp = image_xscale * 8


if place_meeting(x+hsp,y,obj_destructibles)
with instance_place(x+hsp,y,obj_destructibles)
instance_destroy()

if !place_meeting(x+hsp,y,obj_destructibles)  && place_meeting(x+hsp,y,obj_solid) && activated = true && !place_meeting(x+hsp,y,obj_slope) && hitwall = false && scr_solid(x,y+1)
{
	with instance_create(x,y,obj_sausageman_dead)
	sprite_index = spr_noiseboulder
instance_destroy()
}



if hitwall = false
{
scr_collide()
}

