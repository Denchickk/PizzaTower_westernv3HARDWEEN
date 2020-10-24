
switch (character)
{
case "P":

if windingAnim < 200
windingAnim ++

move = key_left + key_right;

suplexmove = false

vsp = -wallspeed;


if wallspeed < 24 && move = xscale
{
wallspeed += 0.05

}


crouchslideAnim = true

//Animations

sprite_index = spr_machclimbwall


//Back to other states


if (!key_attack) 
{
state = states.normal
movespeed = 0
}


//Hit head

        if (scr_solid(x,y-1)) && !place_meeting(x,y-1,obj_destructibles) && !place_meeting(x+sign(hsp),y,obj_slope) && !place_meeting(x- sign(hsp),y,obj_slope)
        {



        sprite_index = spr_superjumpland
        
        

          scr_soundeffect(sfx_groundpound)
        image_index = 0
        state = states.Sjumpland
        machhitAnim = false

        }

if !scr_solid(x+xscale,y)
{
instance_create(x,y,obj_jumpdust)
vsp = 0
if movespeed >=6
state = states.mach2
if movespeed >=12 
{
state = states.mach3
sprite_index = spr_mach4
}
}


//Jump

if key_jump
{
	movespeed = 8
state = states.mach2
image_index =0 
sprite_index = spr_walljumpstart

vsp = -11

xscale *= -1
jumpstop = false
}






if (grounded && wallspeed <= 0) or wallspeed <= 0
{
state = states.jump
sprite_index = spr_fall
}
image_speed = 0.60
    
if !(instance_exists(obj_cloudeffect)) 
{
instance_create(x,y+43,obj_cloudeffect)
}
break

case "V":

if windingAnim < 200
windingAnim ++

move = key_left + key_right;

suplexmove = false

vsp = -wallspeed;


if wallspeed < 24 && move = xscale
{
wallspeed += 0.05

}


crouchslideAnim = true

//Animations

sprite_index = spr_machclimbwall


//Back to other states


if (!key_attack) 
{
state = states.normal
movespeed = 0
}


//Hit head

        if (scr_solid(x,y-1)) && !place_meeting(x,y-1,obj_destructibles) && !place_meeting(x+sign(hsp),y,obj_slope) && !place_meeting(x- sign(hsp),y,obj_slope)
        {



        sprite_index = spr_superjumpland
        
        

          scr_soundeffect(sfx_groundpound)
        image_index = 0
        state = states.Sjumpland
        machhitAnim = false

        }

if !scr_solid(x+xscale,y)
{
instance_create(x,y,obj_jumpdust)
vsp = 0
if movespeed >=6
state = states.mach2
if movespeed >=12 

{
state = states.mach3
sprite_index = spr_mach4
}
}


//Jump

if key_jump
{
	movespeed = 8
state = states.mach2
image_index =0 
sprite_index = spr_walljumpstart

vsp = -11

xscale *= -1
jumpstop = false
}






if (grounded && wallspeed <= 0) or wallspeed <= 0
{
state = states.jump
sprite_index = spr_fall
}
image_speed = 0.60
    
if !(instance_exists(obj_cloudeffect)) 
{
instance_create(x,y+43,obj_cloudeffect)
}
break


case "N":


hsp = 0


if sprite_index = spr_playerN_wallclingstart && floor(image_index) = image_number-1
sprite_index = spr_playerN_wallcling


if sprite_index = spr_playerN_wallcling
vsp = 2
else
vsp = 0

wallclingcooldown = 0


if floor(image_index) = image_number - 1 or !key_jump2
{
vsp = -15
state = states.jump
sprite_index = spr_playerN_jump
image_index = 0
}

if key_jump
{
vsp = -15
state = states.jump
sprite_index = spr_playerN_jump
image_index = 0
}

image_speed = 0.35

break



}