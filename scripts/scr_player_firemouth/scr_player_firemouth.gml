
if sprite_index = spr_player_firemouthintro or sprite_index = spr_player_firemouthend
{
mask_index = spr_crouchmask
}
else
mask_index = spr_player_mask

move = key_left + key_right;




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

mach2 = 0
landAnim = false
scr_getinput();
alarm[5] = 2
if sprite_index = spr_player_firemouthintro && floor(image_index) = image_number -1
{
sprite_index = spr_player_firemouth
}

if sprite_index = spr_player_firemouth 
{
if movespeed <= 12
movespeed += 0.2

hsp = floor(xscale * movespeed)
}
else
{
hsp = 0
movespeed = 0
}


if sprite_index = spr_player_firemouthend && floor(image_index) = image_number -1
{
	
alarm[5] = 2
alarm[7] = 60
hurted = true
state = states.normal
sprite_index = spr_player_idle
image_index = 0
}

if key_slap2 && sprite_index = spr_player_firemouth && sprite_index != spr_player_firemouthshoot  && !instance_exists(obj_firemouth_projectile)
{
	
	movespeed = 0
	image_index = 0
	sprite_index = spr_player_firemouthshoot

}

if sprite_index = spr_player_firemouthshoot && floor(image_index) =3 && !instance_exists(obj_firemouth_projectile)
{

//Fireball
with instance_create(x,y, obj_firemouth_projectile)
image_xscale = other.xscale
}


if sprite_index = spr_player_firemouthshoot && floor(image_index) = image_number -1
{
sprite_index = spr_player_firemouth
image_index = 0
}
//Turn

if scr_solid(x+1,y) && xscale == 1 && hsp != 0 && !place_meeting(x+sign(hsp),y,obj_slope)
{

instance_create(x+10,y+10,obj_bumpeffect)
xscale *= -1
movespeed = movespeed /2
}

if scr_solid(x-1,y) && xscale == -1 && hsp != 0 && !place_meeting(x+sign(hsp),y,obj_slope)
{

instance_create(x-10,y+10,obj_bumpeffect)
xscale *= -1
movespeed = movespeed /2
}

//Jump
if (input_buffer_jump < 8) && grounded && hsp != 0
{

vsp = -11
}





if sprite_index = spr_player_firemouth
{
if movespeed < 4 
image_speed = 0.35
else if movespeed > 4 && movespeed < 8
image_speed = 0.45
else
image_speed = 0.60
}
else
image_speed = 0.35

if hsp != 0 && (floor(image_index) = 0 or floor(image_index) = 2 ) && steppy = false && grounded
{

steppy = true
}

if floor(image_index) != 0 && floor(image_index) != 2 
steppy = false

    
//Effects
if !(instance_exists(obj_dashcloud)) && grounded && hsp != 0
with instance_create(x,y,obj_dashcloud)
image_xscale = other.xscale