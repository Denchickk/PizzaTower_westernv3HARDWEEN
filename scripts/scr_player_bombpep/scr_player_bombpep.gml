
alarm[8] = 60
alarm[7] = 120
hurted = true


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

alarm[5] = 2
if sprite_index = spr_bombpepintro && floor(image_index) = image_number -1
{
sprite_index = spr_bombpeprun
}

if sprite_index = spr_bombpeprun or sprite_index = spr_bombpeprunabouttoexplode
{
if movespeed <= 8
movespeed += 0.2


move = key_left + key_right;

if grounded
if move != 0 && !instance_exists(obj_bumpeffect)
xscale = move

hsp = floor(xscale * movespeed)

}
else
{
hsp = 0
movespeed = 0
}
if bombpeptimer < 20 && bombpeptimer != 0
sprite_index = spr_bombpeprunabouttoexplode

if sprite_index = spr_bombpepend && floor(image_index) = image_number -1
{
alarm[5] = 2
alarm[7] = 60
hurted = true
state = states.normal
sprite_index = spr_idle
image_index = 0
}

if bombpeptimer = 0 && sprite_index = spr_bombpeprunabouttoexplode
{
scr_soundeffect(sfx_bombpep2)
hurted = true
instance_create(x,y,obj_bombexplosion)
sprite_index = spr_bombpepend
}
if bombpeptimer > 0
bombpeptimer -= 0.5

//Turn

if scr_solid(x+1,y) && xscale == 1 && hsp != 0 && !place_meeting(x+sign(hsp),y,obj_slope)
{

instance_create(x+10,y+10,obj_bumpeffect)
xscale *= -1
}

if scr_solid(x-1,y) && xscale == -1 && hsp != 0 && !place_meeting(x+sign(hsp),y,obj_slope)
{

instance_create(x-10,y+10,obj_bumpeffect)
xscale *= -1
}

//Jump
if (input_buffer_jump < 8) && grounded && hsp != 0
{

vsp = -11
}







if movespeed < 4 
image_speed = 0.35
else if movespeed > 4 && movespeed < 8
image_speed = 0.45
else
image_speed = 0.60

if hsp != 0 && (floor(image_index) = 0 or floor(image_index) = 2 ) && steppy = false && grounded
{

steppy = true
}

if floor(image_index) != 0 && floor(image_index) != 2 
steppy = false

    
//Effects
if !(instance_exists(obj_dashcloud)) && grounded && hsp != 0
with instance_create(x,y,obj_dashcloud)
{
image_xscale = other.xscale
}