hsp = xscale * movespeed



if sprite_index = spr_tumblestart
movespeed = 6
else
movespeed = 14


if !scr_slope() && sprite_index = spr_tumblestart && floor(image_index) < 11
image_index = 11

if sprite_index = spr_tumblestart && floor(image_index) = image_number -1
sprite_index = spr_tumble

if (place_meeting(x+xscale,y,obj_solid) && !place_meeting(x+hsp,y,obj_destructibles))
or place_meeting(x,y,obj_timedgate)
{
	scr_soundeffect(sfx_tumble4)
	hsp = 0
	movespeed = 0
	sprite_index = spr_tumbleend
state =states.bump
image_index = 0
}

//Input buffer jumping
if key_jump
{
input_buffer_jump = 0
}

//Jump Stop
if (!key_jump2) && jumpstop = false && vsp < 0.5 && stompAnim =false
{
vsp /= 2
jumpstop = true
}

if grounded && vsp > 0
{
jumpstop = false
}

//Jump
if (input_buffer_jump < 8) && grounded && hsp != 0
{

vsp = -9
}

image_speed = 0.35