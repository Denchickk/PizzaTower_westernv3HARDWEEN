if !place_meeting(x,y+1, obj_railh)&& !place_meeting(x,y+1, obj_railh2)
hsp = xscale * movespeed;
else if place_meeting(x,y+1, obj_railh)
hsp = xscale * movespeed -5
else if place_meeting(x,y+1, obj_railh2)
hsp = xscale * movespeed +5


if movespeed >= 0 && grounded
movespeed -= 0.2




mask_index = spr_crouchmask




if key_jump2 && grounded && !(scr_solid(x+27,y-32)) && !(scr_solid(x-27,y-32)) && !(scr_solid(x,y-32)) && !(scr_solid(x,y-16))
{
scr_soundeffect(sfx_jump)

sprite_index = spr_jump


if shotgunAnim = true
{
sprite_index = spr_shotgunjump
}
with instance_create(x,y,obj_highjumpcloud2)
image_xscale = other.xscale

vsp = -11



state = states.jump




image_index = 0
jumpAnim = true
	
}




//Back to other states
    //Crouch
    if ((movespeed <= 5 or ((scr_solid(x+1,y) && xscale == 1) or (scr_solid(x-1,y) && xscale == -1))) && !place_meeting(x+sign(hsp),y,obj_slope)) or movespeed <= 0
    {
    state = states.crouch
    movespeed = 0
    mach2 = 0
    crouchslideAnim = true
    image_index = 0
    crouchAnim = true
    start_running = true
alarm[4] = 14
    }

    //Bump
    if (scr_solid(x+1,y) && xscale == 1) && !place_meeting(x+sign(hsp),y,obj_slope)
    {
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
    if (scr_solid(x-1,y) && xscale == -1) && !place_meeting(x+sign(hsp),y,obj_slope)
    {
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


image_speed = 0.4