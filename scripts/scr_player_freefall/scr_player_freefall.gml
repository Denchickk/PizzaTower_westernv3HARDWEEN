
landAnim = true
vsp = 15

move = key_left + key_right;
if !grounded
{


	hsp = move * movespeed;


	if move != xscale && momemtum = true && movespeed != 0 
	{
	movespeed -= 0.05
	}

	if movespeed = 0
	momemtum = false

	if (move = 0 && momemtum = false) or scr_solid(x+(hsp),y)
	{
	movespeed = 0
	mach2 = 0
	}
	if move != 0 && movespeed < 7
	movespeed += 0.25
	if movespeed > 7 
	movespeed -= 0.05

	if ((scr_solid(x+1,y) && move == 1) or (scr_solid(x-1,y) && move == -1))
	{
	movespeed = 0
	}

	//Turn

	if dir != xscale 
	{
	mach2 = 0
	dir = xscale
	movespeed = 0 
	}
	if move = -xscale
	{
	mach2 = 0
	movespeed = 0 
	momemtum = false
	}
		if move != 0
	xscale = move
	
}
    
freefallsmash ++
if freefallsmash > 10 &&  !instance_exists(superslameffectid) 
	with instance_create(x,y,obj_superslameffect)
	{
	playerid = other.object_index	
	other.superslameffectid = id
	}

        //Normal
    if grounded  && !(input_buffer_jump < 8) && !place_meeting(x,y+1,obj_destructibles)
    {
		scr_soundeffect(sfx_groundpound)
		freefallsmash= 0
		
if shotgunAnim = false
sprite_index = spr_bodyslamland
else
sprite_index = spr_shotgunjump2

image_index = 0
   state = states.freefallland
    jumpAnim = true
    jumpstop = false
    
    with (obj_baddie)
{
if grounded && (point_in_rectangle(x, y, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ))) 
{
	state =states.stun
	if stunned < 60
	stunned= 60
vsp = -11
image_xscale *= -1
hsp = 0
momentum = 0
}
}
            with (obj_camera) {

    shake_mag=10;
    shake_mag_acc=30/room_speed;
}
    combo = 0
     bounce = false
    

   

    instance_create(x,y,obj_landcloud)
    freefallstart = 0


    }

image_speed = 0.35



