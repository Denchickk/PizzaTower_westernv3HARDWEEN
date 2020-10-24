if !place_meeting(x,y+1, obj_railh)
hsp = xscale * movespeed;
else if place_meeting(x,y+1, obj_railh)
hsp = xscale * movespeed -5
else if place_meeting(x,y+1, obj_railh2)
hsp =xscale  * movespeed +5

mach2 = 100
machslideAnim = true

move = key_right + key_left




switch (character)
{
case "P":

//Animations


   






                  
        //Bump
    if (scr_solid(x+1,y) && xscale == 1) && !place_meeting(x+sign(hsp),y,obj_slope) && !place_meeting(x+sign(hsp),y,obj_destructibles)
    {
scr_soundeffect(sfx_bumpwall)


hsp = 0
image_speed = 0.35


    flash = false
    combo = 0
    state = states.bump
    hsp = -2.5
    vsp = -3
    mach2 = 0
    image_index = 0
    instance_create(x+10,y+10,obj_bumpeffect)

    }
    if (scr_solid(x-1,y) && xscale == -1) && !place_meeting(x+sign(hsp),y,obj_slope) && !place_meeting(x+sign(hsp),y,obj_destructibles)
    {
scr_soundeffect(sfx_bumpwall)

hsp = 0
image_speed = 0.35

    flash = false
    combo = 0
    state = states.bump
    hsp = 2.5
    vsp = -3
    mach2 = 0
    image_index = 0
    instance_create(x-10,y+10,obj_bumpeffect)

    }
    







if !(instance_exists(dashcloudid)) && grounded
with instance_create(x,y+43,obj_cloudeffect)
{
	image_xscale = other.xscale
   other.dashcloudid = id
	
}

if grounded && sprite_index != spr_playerV_divekickstart
sprite_index = spr_machroll 
else
{
	if sprite_index != spr_dive 
	{
sprite_index = spr_dive 
vsp = 10
	}
}


image_speed = 0.8

            if (!key_down && !(scr_solid(x+27,y-32)) && !(scr_solid(x-27,y-32)) && !(scr_solid(x,y-32)) && !(scr_solid(x,y-16))) 
  {
image_index = 0
scr_soundeffect(sfx_rollgetup)
       state = states.mach2
	   sprite_index = spr_rollgetup
       }
	   break
	   
 case "V":

//Animations


   


if sprite_index =spr_playerV_divekickstart && floor(image_index) = image_number -1
sprite_index = spr_playerV_divekick




                  
        //Bump
    if (scr_solid(x+1,y) && xscale == 1) && !place_meeting(x+sign(hsp),y,obj_slope) && !place_meeting(x+sign(hsp),y,obj_destructibles)
    {
scr_soundeffect(sfx_bumpwall)


hsp = 0
image_speed = 0.35


    flash = false
    combo = 0
    state = states.bump
    hsp = -2.5
    vsp = -3
    mach2 = 0
    image_index = 0
    instance_create(x+10,y+10,obj_bumpeffect)

    }
    if (scr_solid(x-1,y) && xscale == -1) && !place_meeting(x+sign(hsp),y,obj_slope) && !place_meeting(x+sign(hsp),y,obj_destructibles)
    {
scr_soundeffect(sfx_bumpwall)

hsp = 0
image_speed = 0.35

    flash = false
    combo = 0
    state = states.bump
    hsp = 2.5
    vsp = -3
    mach2 = 0
    image_index = 0
    instance_create(x-10,y+10,obj_bumpeffect)

    }
    







if !(instance_exists(dashcloudid)) && grounded
with instance_create(x,y+43,obj_cloudeffect)
{
	image_xscale = other.xscale
   other.dashcloudid = id
	
}

if grounded && sprite_index != spr_playerV_divekickstart
sprite_index = spr_machroll
else
{
	if sprite_index != spr_dive 
	{
sprite_index = spr_dive 
vsp = 10
	}
}


image_speed = 0.8

            if (!key_down && !(scr_solid(x+27,y-32)) && !(scr_solid(x-27,y-32)) && !(scr_solid(x,y-32)) && !(scr_solid(x,y-16))) 
  {
image_index = 0
scr_soundeffect(sfx_rollgetup)
       state = states.mach2
	   sprite_index = spr_rollgetup
       }
	   break
	   case "N":
	   
	   
	                     
        //Bump
    if (scr_solid(x+1,y) && xscale == 1) && !place_meeting(x+sign(hsp),y,obj_slope) && !place_meeting(x+sign(hsp),y,obj_destructibles)
    {
scr_soundeffect(sfx_bumpwall)


hsp = 0
image_speed = 0.35


    flash = false
    combo = 0
    state = states.bump
    hsp = -2.5
    vsp = -3
    mach2 = 0
    image_index = 0
    instance_create(x+10,y+10,obj_bumpeffect)

    }
    if (scr_solid(x-1,y) && xscale == -1) && !place_meeting(x+sign(hsp),y,obj_slope) && !place_meeting(x+sign(hsp),y,obj_destructibles)
    {
scr_soundeffect(sfx_bumpwall)

hsp = 0
image_speed = 0.35

    flash = false
    combo = 0
    state = states.bump
    hsp = 2.5
    vsp = -3
    mach2 = 0
    image_index = 0
    instance_create(x-10,y+10,obj_bumpeffect)

    }
    
	   
	   
	               if ((!key_down or !grounded) && !(scr_solid(x+27,y-32)) && !(scr_solid(x-27,y-32)) && !(scr_solid(x,y-32)) && !(scr_solid(x,y-16))) 
  {
image_index = 0
scr_soundeffect(sfx_rollgetup)
       state = states.mach3
	   sprite_index = spr_playerN_jetpackboost
       }
	   
	   
if !(instance_exists(dashcloudid)) && grounded
with instance_create(x,y+43,obj_cloudeffect)
{
	image_xscale = other.xscale
   other.dashcloudid = id
	
}
	   
image_speed = 0.8
	   
break
	   
}