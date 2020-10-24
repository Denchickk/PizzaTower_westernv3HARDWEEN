grav = 0.5

move = key_left + key_right;


if grounded
{
	//Turn

	if dir != xscale && sprite_index != spr_swingding
	{
		
	dir = xscale
	movespeed = 2 
	facehurt = false

	}


jumpstop = false


	anger = 100
	if !place_meeting(x,y+1, obj_railh) && !place_meeting(x,y+1, obj_railh2)
	hsp = move * movespeed;
	else if place_meeting(x,y+1, obj_railh)
	hsp = move * movespeed -5
	else if place_meeting(x,y+1, obj_railh2)
	hsp = move * movespeed +5


	//Movespeed
if heavy = false
{
	if move != 0 
	{
	if movespeed < 6
	{
	movespeed += 0.5
	}
	else if floor(movespeed)= 6 
	{
	movespeed = 6
	}
	}
	else
	movespeed = 0

	if movespeed > 6
	movespeed -= 0.1
}
else
{
	if move != 0 
	{
	if movespeed < 4
	{
	movespeed += 0.25
	}
	else if floor(movespeed)= 4
	{
	movespeed = 4
	}
	}
	else
	movespeed = 0

	if movespeed > 4
	movespeed -= 0.1
}


	if move != 0 && sprite_index != spr_swingding
	{

	xscale = move
	}
	
	if move != 0
{

if movespeed < 3 && move != 0
image_speed = 0.35
else if movespeed > 3 && movespeed < 6 
image_speed = 0.45
else
image_speed = 0.60
}
else 
image_speed = 0.35
	
}


if !grounded
{

if dir != xscale && sprite_index != spr_swingding
{
dir = xscale
movespeed = 2 
facehurt = false

}

	if move != xscale
	{
	movespeed = 2 

	}
	
	if momemtum = false
	hsp = move * movespeed;
	else
	hsp = xscale * movespeed

	if move != xscale && momemtum = true && movespeed != 0 
	{
	movespeed -= 0.05
	}

	if movespeed = 0
	momemtum = false

	if move != 0 && movespeed < 6
	movespeed += 0.5
	if movespeed > 6 
	movespeed -= 0.5

	if ((scr_solid(x+1,y) && move == 1) or (scr_solid(x-1,y) && move == -1))
	{
	movespeed = 0
	}

	//Turn

if dir != xscale && sprite_index != spr_swingding
{
dir = xscale
movespeed = 2 
facehurt = false

}
	if move = -xscale
	{
	mach2 = 0
	momemtum = false
	}

	landAnim = true


	//Jump Stop
	if (!key_jump2) && jumpstop = false && vsp < 0.5 && stompAnim =false
	{
	vsp /= 10
	jumpstop = true
	}

	//Ladder Buffer
	if ladderbuffer > 0
	ladderbuffer --

	//Hit head
	if scr_solid(x,y-1) && jumpstop = false && jumpAnim = true
	{
	vsp = grav
	jumpstop = true
	}
	
	if move != 0 && sprite_index != spr_swingding
	xscale = move
	
	
	
}
//Input buffer jumping
if key_jump
{
input_buffer_jump = 0
}


//Input jumping

if (grounded && (input_buffer_jump < 8) && !key_down &&  !key_attack && vsp > 0 ) && sprite_index != spr_swingding
{
scr_soundeffect(sfx_jump)
sprite_index = spr_haulingjump
instance_create(x,y,obj_highjumpcloud2)
if heavy = false
vsp = -11
else
vsp = -6
image_index = 0
}

//Animations
	//Walk
if grounded && move != 0 && sprite_index = spr_haulingidle
sprite_index = spr_haulingwalk
else
if grounded && move = 0 && sprite_index = spr_haulingwalk
sprite_index = spr_haulingidle

if (sprite_index = spr_haulingstart && floor(image_index) = image_number - 1) 
sprite_index = spr_haulingidle

	//Fall
if (sprite_index = spr_haulingjump && floor(image_index) = image_number - 1) 
or (!grounded && (sprite_index = spr_haulingwalk or sprite_index = spr_haulingidle))
sprite_index = spr_haulingfall

	//Land
if grounded && vsp > 0 && (sprite_index = spr_haulingfall or sprite_index = spr_haulingjump)
{
sprite_index = spr_haulingland
movespeed = 2
}

if (sprite_index = spr_haulingland && floor(image_index) = image_number - 1) 
sprite_index = spr_haulingidle


//Swing Ding
if move != 0 && move != lastmove && swingdingbuffer < 300
{
lastmove = move
swingdingbuffer += 50
}



if swingdingbuffer > 0
swingdingbuffer -= 1



if sprite_index = spr_swingding && swingdingbuffer < 150
state = states.normal

if swingdingbuffer > 300 && sprite_index != spr_swingding
{
sprite_index =spr_swingding

with instance_create(x,y,obj_swingdinghitbox)
playerid = other.object_index
flash = true
}
//Throws

if key_slap2
{


if move != 0
move = xscale
	state =states.finishingblow
	if sprite_index = spr_swingding
	sprite_index = spr_swingdingend
	else if !key_up
	sprite_index = choose(spr_finishingblow1,spr_finishingblow2,spr_finishingblow3,spr_finishingblow4,spr_finishingblow5)
	else if key_up
	sprite_index = spr_uppercutfinishingblow
	
	image_index = 0
hsp = 0
movespeed = 0

		


		}


if key_attack2
{
state = states.tacklecharge	
	sprite_index = spr_charge
	with instance_create(x,y,obj_jumpdust)
image_xscale = other.xscale
scr_soundeffect(sfx_suplexdash)
}


		
		if key_down && !grounded
		{
	

		sprite_index =spr_piledriver

		vsp = -6
		state = states.superslam
		image_index = 0
		image_speed = 0.35
		}





//Effects
if !(instance_exists(obj_cloudeffect)) && grounded && move != 0 && (floor(image_index) = 4 or floor(image_index) = 10)
{
instance_create(x,y+43,obj_cloudeffect)
}

//Crouch
if (key_down && grounded) 
{
state = states.crouch
landAnim = false
crouchAnim = true
image_index = 0
idle = 0
}

if move != 0 && (floor(image_index) = 3 or floor(image_index) = 8) && steppy = false
{

steppy = true
}

if move != 0 && floor(image_index) != 3 && floor(image_index) != 8
steppy = false
if sprite_index != spr_swingding
image_speed = 0.35
else
image_speed = swingdingbuffer /600