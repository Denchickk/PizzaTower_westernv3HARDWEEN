
landAnim = false

hsp = xscale * movespeed

move = key_left + key_right;



momemtum = true
dir = xscale


if movespeed < 10 && grounded
movespeed += 0.5
else if !grounded
movespeed = 10







//Jump Stop
if (!key_jump2) && jumpstop = false && vsp < 0.5 && stompAnim =false 
{
vsp /= 10
jumpstop = true
}

if move != xscale && move != 0
state = states.normal


if (floor(image_index) = image_number -1 or sprite_index = spr_suplexdashjump or sprite_index = spr_suplexdashjumpstart) && grounded && (!key_attack or character = "N") && vsp > 0
{
image_speed = 0.35
state = states.normal
grav = 0.5
}

if (floor(image_index) = image_number -1 or sprite_index = spr_suplexdashjump or sprite_index = spr_suplexdashjumpstart) && grounded && key_attack && character = "P"
{
image_speed = 0.35
state = states.mach2
grav = 0.5

}





if floor(image_index) = image_number -1 && sprite_index = spr_suplexdashjumpstart
sprite_index = spr_suplexdashjump

    //Crouchslide
if key_down && grounded && vsp > 0
{
	grav = 0.5
sprite_index = spr_crouchslip

machhitAnim = false
state = states.crouchslide
movespeed = 15
}


//Input jumping



if !grounded && (sprite_index =spr_suplexdash or sprite_index =spr_shotgunsuplexdash) 
{
	image_index = 0
sprite_index = spr_suplexdashjumpstart	
}

//Input buffer jumping
if key_jump
{
input_buffer_jump = 0
}

if (grounded && (input_buffer_jump < 8) ) 
{
	image_index = 0
	sprite_index = spr_suplexdashjumpstart	
scr_soundeffect(sfx_jump)
instance_create(x,y,obj_highjumpcloud2)


vsp = -11


}
 //Bump
    if (scr_solid(x+1,y) && xscale == 1) && !place_meeting(x+sign(hsp),y,obj_slope) && !place_meeting(x+xscale,y,obj_destructibles) 
    {
		scr_soundeffect(sfx_bumpwall)
    grav = 0.5
    movespeed = 0
    state = states.bump
    hsp = -2.5
    vsp = -3
    mach2 = 0
    image_index = 0
    machslideAnim = true
    machhitAnim = false
    instance_create(x+10,y+10,obj_bumpeffect)

    }
    if (scr_solid(x-1,y) && xscale == -1) && !place_meeting(x+sign(hsp),y,obj_slope) && !place_meeting(x+xscale,y,obj_destructibles) 
    {
		scr_soundeffect(sfx_bumpwall)
    grav = 0.5
    movespeed = 0
    state = states.bump
    hsp = 2.5
    vsp = -3
    mach2 = 0
    image_index = 0
    machslideAnim = true
    machhitAnim = false
    instance_create(x-10,y+10,obj_bumpeffect)

    }
	//Effects
if !(instance_exists(obj_slidecloud)) && grounded && movespeed > 5
with instance_create(x,y,obj_slidecloud)
image_xscale = other.xscale



if character = "S"
{
	if key_attack 
	{
		hsp = 0
if movespeed < 20
movespeed += 0.5

if movespeed = 20
sprite_index = spr_snick_superpeelout
else if movespeed < 20 && movespeed > 12
sprite_index = spr_snick_mach3
else if movespeed < 12 && movespeed > 8
sprite_index = spr_snick_mach2
else
sprite_index = spr_snick_walk
	}
	else if movespeed >= 12
state = states.mach3
else 
{
	state = states.normal
	movespeed = 0
}

//Effects
if !(instance_exists(obj_dashcloud2)) && grounded && movespeed > 5
with instance_create(x,y,obj_dashcloud2)
image_xscale = other.xscale

}


image_speed =0.35	

//Faceplant roll
if key_slap2
{
movespeed = 8
image_index = 0
if character = "P"
sprite_index = spr_player_faceplant
if character = "N"
sprite_index = spr_playerN_spin
state = states.faceplant
image_speed = 0.5
with instance_create(x,y,obj_jumpdust)
image_xscale = other.xscale
if !(instance_exists(crazyruneffectid))
with instance_create(x,y,obj_crazyrunothereffect)
{
	playerid = other.object_index	
   other.crazyruneffectid = id
	
}

}
