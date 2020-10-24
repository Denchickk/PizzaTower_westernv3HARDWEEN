mach2 = 0



jumpAnim = true
dashAnim = true
landAnim = false
moveAnim = true
stopAnim = true
crouchslideAnim = true
crouchAnim = false
machhitAnim = false

hsp = xscale * movespeed;




machhitAnim = false

crouchslideAnim = true




//Back to other states
    
    //Normal
    
    if movespeed <= 0
    {
    state = states.normal
    movespeed = 0
    mach2 = 0
    image_index = 0
    
    }
    //Bump
    if (scr_solid(x+1,y) && xscale == 1) && !place_meeting(x+sign(hsp),y,obj_slope)
    {
    state = states.bump
    hsp = -2
    vsp = -3
    mach2 = 0
    image_index = 0
    instance_create(x+10,y+10,obj_bumpeffect)

    }
    if (scr_solid(x-1,y) && xscale == -1) && !place_meeting(x+sign(hsp),y,obj_slope)
    {
    state = states.bump
    hsp = 2
    vsp = -3
    mach2 = 0
    image_index = 0
    instance_create(x-10,y+10,obj_bumpeffect)

    }

if grounded
movespeed -= 0.1
        
//Animations
sprite_index = spr_slipnslide

image_speed = 0.35


//Effects
if !(instance_exists(obj_slidecloud)) && grounded && movespeed > 1.5
with instance_create(x,y,obj_slidecloud)
image_xscale = other.xscale
