

if !place_meeting(x,y+1, obj_railh)&& !place_meeting(x,y+1, obj_railh2)
hsp = xscale * movespeed;
else if place_meeting(x,y+1, obj_railh)
hsp = xscale * movespeed -5
else if place_meeting(x,y+1, obj_railh2)
hsp =xscale  * movespeed +5

move = key_right + key_left
if movespeed >= 0
{

movespeed -= 0.4

}


//Animations

if sprite_index = spr_machslidestart && floor(image_index) = image_number-1
{
sprite_index = spr_machslide
}

image_speed = 0.35



landAnim = false


//Back to other states
    //Normal
    
    if (floor(movespeed) <= 0  && (sprite_index = spr_machslide or sprite_index = spr_crouchslide)) 
    {

		state = states.normal
    image_index = 0
    if sprite_index = spr_machslide
    machslideAnim = true
movespeed  = 0
    
    
    }
    
	if place_meeting(x+xscale,y,obj_solid) && (sprite_index = spr_machslide or sprite_index = spr_machslidestart)
	{
		    hsp = -xscale * 2.5
    vsp = -4
	state = states.bump	
		image_index = 4
	}

if floor(image_index) = image_number -1 && sprite_index = spr_machslideboost
{
	hsp = 0
	image_index = 0
		xscale *= -1
			movespeed = 8
state =states.mach2	


}
  

if floor(image_index) = image_number -1 && sprite_index = spr_mach3boost
{
		

	hsp = 0
	sprite_index = spr_mach4
	image_index = 0
		xscale *= -1
	movespeed = 12
	state =states.mach3

}
  


if sprite_index= spr_player_crouchslide && movespeed = 0 && grounded 
{
	facehurt = true
	state = states.normal
	sprite_index = spr_facehurtup
}

    


//Effects
if mach2 = 0
{
if !(instance_exists(dashcloudid)) && grounded
with instance_create(x,y,obj_slidecloud)
{
image_xscale = other.xscale
other.dashcloudid = id
}
}
else if mach2 >= 35
{
if !(instance_exists(dashcloudid)) && grounded
with instance_create(x,y,obj_dashcloud)
{
image_xscale = other.xscale
other.dashcloudid = id
}
}
else if mach2 >= 100
{
if !(instance_exists(dashcloudid)) && grounded
with instance_create(x,y,obj_dashcloud2)
{
image_xscale = other.xscale
other.dashcloudid = id
}
}