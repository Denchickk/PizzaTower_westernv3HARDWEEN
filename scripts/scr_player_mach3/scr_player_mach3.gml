switch (character)
{
	
	case "P":
	
if windingAnim < 2000
windingAnim ++

if !place_meeting(x,y+1, obj_railh)&& !place_meeting(x,y+1, obj_railh2)
hsp = xscale * movespeed;
else if place_meeting(x,y+1, obj_railh)
hsp = xscale * movespeed -5
else if place_meeting(x,y+1, obj_railh2)
hsp =xscale  * movespeed +5

mach2 = 100
momemtum = true

move = key_right + key_left
move2 = key_right2 + key_left2

if fightball = true && global.coop = true
{
if object_index = obj_player1
{
x = obj_player2.x
y = obj_player2.y
}

if object_index = obj_player2
{
x = obj_player1.x
y = obj_player1.y
}
}


if movespeed < 24 && move = xscale
{
	{

movespeed += 0.1

	}

if !(instance_exists(crazyruneffectid)) && grounded
{
with instance_create(x,y,obj_crazyruneffect)
{
	playerid = other.object_index
   other.crazyruneffectid = id
   
	
}
if sprite_index = spr_crazyrun
with instance_create(x,y,obj_dashcloud) 
{
	image_xscale = other.xscale
   sprite_index = spr_flamecloud
	
}
}
}
else if movespeed > 12 && move != xscale && pizzapepper = 0
movespeed -= 0.1



crouchslideAnim = true

//Animations


//Jump Stop
if (!key_jump2) && jumpstop = false && vsp < 0.5 
{
vsp /= 10
jumpstop = true
}

if grounded && vsp > 0
{
jumpstop = false
}


//Jump
if (input_buffer_jump < 8) && grounded && !(move == 1 && xscale == -1) && !(move == -1 && xscale == 1)  
{
scr_soundeffect(sfx_jump)
if sprite_index != spr_fightball
{
image_index =0
sprite_index = spr_mach3jump
}
if character = "P"
vsp = -11
else
vsp = -13
}



//Sprites

if fightball = false
{
if sprite_index = spr_mach3jump && floor(image_index) = image_number-1 
{
sprite_index = spr_mach4
}

  if floor(image_index) = image_number - 1 && (sprite_index = spr_rollgetup or sprite_index = spr_mach3hit)
sprite_index = spr_mach4

if sprite_index = spr_mach2jump && grounded && vsp > 0
sprite_index = spr_mach4

if movespeed > 20 && sprite_index != spr_crazyrun 
{

	flash = true
sprite_index = spr_crazyrun

}
else if movespeed <= 20 && sprite_index = spr_crazyrun
sprite_index = spr_mach4
}

if sprite_index = spr_crazyrun && !(instance_exists(crazyruneffectid))
with instance_create(x,y,obj_crazyrunothereffect)
{
	playerid = other.object_index	
   other.crazyruneffectid = id
  
	
}







if sprite_index = spr_mach4 or sprite_index = spr_fightball
image_speed = 0.4
if sprite_index = spr_crazyrun
image_speed = 0.75
if sprite_index = spr_rollgetup or sprite_index = spr_mach3hit
image_speed = 0.4



//Input buffer jumping
if key_jump
input_buffer_jump = 0





//Back to other states

    
            //Machslide
    if ((!key_attack && fightball = false) && grounded  && (character = "P" or character = "N")) or (character = "S" && (move = 0 or move != xscale) && grounded) && fightball = false
    {
    
    

    sprite_index = spr_machslidestart
scr_soundeffect(sfx_break)
    state = states.machslide
    image_index = 0

    }
	
	if move = -xscale && grounded && (character ="P" or character = "N")  && fightball = false
	    {
    
    scr_soundeffect(sfx_machslideboost)

    sprite_index = spr_mach3boost

    state = states.machslide
    image_index = 0

    }
    
    //Machroll
if key_down && fightball = false && !place_meeting(x,y,obj_dashpad)
{
with instance_create(x,y,obj_jumpdust)
image_xscale = other.xscale
flash = false
state = states.machroll
vsp = 10
if character = "V"
sprite_index =spr_playerV_divekickstart 
}


//Climbwall
if (!grounded && place_meeting(x+hsp,y,obj_solid) && !place_meeting(x+hsp,y,obj_destructibles) && !place_meeting(x+hsp,y,obj_metalblock)  && !place_meeting(x+sign(hsp),y,obj_slope) )
 or (grounded &&  place_meeting(x+hsp,y-32,obj_solid) && !place_meeting(x+hsp,y,obj_destructibles) && !place_meeting(x+hsp,y,obj_metalblock) && place_meeting(x,y+1,obj_slope)  )
 {
wallspeed = 10
 state =states.climbwall
  }
        //Bump

    if (scr_solid(x+1,y) && xscale == 1) && !scr_slope() && (!place_meeting(x+sign(hsp),y,obj_slope) or place_meeting(x+sign(hsp),y,obj_solid))  && !place_meeting(x+sign(hsp),y,obj_metalblock)  && !place_meeting(x+sign(hsp),y,obj_destructibles)  && (grounded or fightball = true)
    {
if fightball = false
{
sprite_index = spr_hitwall
scr_soundeffect(sfx_groundpound)
scr_soundeffect(sfx_bumpwall)
    with (obj_camera) {

    shake_mag=20;
    shake_mag_acc=40/room_speed;
}

hsp = 0
image_speed = 0.35

    with (obj_baddie)
{
if (point_in_rectangle(x, y, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ))) {

stun = true
alarm[0] = 200
ministun = false
vsp = -5
hsp = 0
}
}
    flash = false

    state = states.bump
    hsp = -2.5
    vsp = -3
    mach2 = 0
    image_index = 0
    instance_create(x+10,y+10,obj_bumpeffect)

}
	else if fightball = true
	{
		with obj_player
		{
			sprite_index = spr_hitwall
	scr_soundeffect(sfx_groundpound)
	scr_soundeffect(sfx_bumpwall)
	    with (obj_camera) {

	    shake_mag=20;
	    shake_mag_acc=40/room_speed;
	}

	hsp = 0
	image_speed = 0.35

	    with (obj_baddie)
	{
	if (point_in_rectangle(x, y, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ))) {

	stun = true
	alarm[0] = 200
	ministun = false
	vsp = -5
	hsp = 0
	}
	}
	    flash = false

	    state = states.bump
	    hsp = -2.5
	    vsp = -3
	    mach2 = 0
	    image_index = 0
	    instance_create(x+10,y+10,obj_bumpeffect)
		
		}
		fightball = false
	
    }
	
}
    if (scr_solid(x-1,y) && xscale == -1) && !scr_slope() && (!place_meeting(x+sign(hsp),y,obj_slope) or place_meeting(x+sign(hsp),y,obj_solid))  && !place_meeting(x+sign(hsp),y,obj_metalblock) && !place_meeting(x+sign(hsp),y,obj_destructibles)    && (grounded or fightball = true)
    {
		if fightball = false
{
sprite_index = spr_hitwall
scr_soundeffect(sfx_groundpound)
scr_soundeffect(sfx_bumpwall)
    with (obj_camera) {

    shake_mag=20;
    shake_mag_acc=40/room_speed;
}

hsp = 0
image_speed = 0.35

	    with (obj_baddie)
	{
	if (point_in_rectangle(x, y, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ))) {

	stun = true
	alarm[0] = 200
	ministun = false
	vsp = -5
	hsp = 0
	}
	}

    flash = false

    state = states.bump
    hsp = 2.5
    vsp = -3
    mach2 = 0
    image_index = 0
    instance_create(x-10,y+10,obj_bumpeffect)
}
	else if fightball = true
	{
		with obj_player
		{
			sprite_index = spr_hitwall
	scr_soundeffect(sfx_groundpound)
	scr_soundeffect(sfx_bumpwall)
	    with (obj_camera) {

	    shake_mag=20;
	    shake_mag_acc=40/room_speed;
	}

	hsp = 0
	image_speed = 0.35

	    with (obj_baddie)
	{
	if (point_in_rectangle(x, y, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ))) {

	stun = true
	alarm[0] = 200
	ministun = false
	vsp = -5
	hsp = 0
	}
	}
	    flash = false

	    state = states.bump
	    hsp = -2.5
	    vsp = -3
	    mach2 = 0
	    image_index = 0
	    instance_create(x+10,y+10,obj_bumpeffect)
		
		}
		fightball = false
	
    }
  }
    


    
       //Freefall
//   if key_down2 && !grounded
//   {
//   vsp = -4
 //  state = states.freefallprep
    
 //   hsp =0
    
 //   image_index = 0

//}


break

	case "V":
	
	
	
if windingAnim < 2000
windingAnim ++

if !place_meeting(x,y+1, obj_railh)&& !place_meeting(x,y+1, obj_railh2)
hsp = xscale * movespeed;
else if place_meeting(x,y+1, obj_railh)
hsp = xscale * movespeed -5
else if place_meeting(x,y+1, obj_railh2)
hsp =xscale  * movespeed +5

mach2 = 100
momemtum = true

move = key_right + key_left
move2 = key_right2 + key_left2

if fightball = true && global.coop = true
{
if object_index = obj_player1
{
x = obj_player2.x
y = obj_player2.y
}

if object_index = obj_player2
{
x = obj_player1.x
y = obj_player1.y
}
}


if movespeed < 24 && move = xscale
{
	{

if character = "P"
movespeed += 0.1
else
movespeed += 0.05

	}

if !(instance_exists(crazyruneffectid)) && grounded
{
with instance_create(x,y,obj_crazyruneffect)
{
	playerid = other.object_index
   other.crazyruneffectid = id
   
	
}
if sprite_index = spr_crazyrun
with instance_create(x,y,obj_dashcloud) 
{
	image_xscale = other.xscale
   sprite_index = spr_flamecloud
	
}
}
}
else if movespeed > 12 && move != xscale && pizzapepper = 0
movespeed -= 0.1



crouchslideAnim = true

//Animations


//Jump Stop
if (!key_jump2) && jumpstop = false && vsp < 0.5 
{
vsp /= 10
jumpstop = true
}

if grounded && vsp > 0
{
jumpstop = false
}


//Jump
if (input_buffer_jump < 8) && grounded && !(move == 1 && xscale == -1) && !(move == -1 && xscale == 1)  
{
scr_soundeffect(sfx_jump)
if sprite_index != spr_fightball
{
image_index =0
sprite_index = spr_mach3jump
}

vsp = -11

}



//Sprites

if fightball = false
{
if sprite_index = spr_mach3jump && floor(image_index) = image_number-1 
{
sprite_index = spr_mach4
}

  if floor(image_index) = image_number - 1 && (sprite_index = spr_rollgetup or sprite_index = spr_mach3hit)
sprite_index = spr_mach4

if sprite_index = spr_mach2jump && grounded && vsp > 0
sprite_index = spr_mach4

if movespeed > 20 && sprite_index != spr_crazyrun 
{

	flash = true
sprite_index = spr_crazyrun

}
else if movespeed <= 20 && sprite_index = spr_crazyrun
sprite_index = spr_mach4
}

if sprite_index = spr_crazyrun && !(instance_exists(crazyruneffectid))
with instance_create(x,y,obj_crazyrunothereffect)
{
	playerid = other.object_index	
   other.crazyruneffectid = id
  
	
}







if sprite_index = spr_mach4 or sprite_index = spr_fightball
image_speed = 0.4
if sprite_index = spr_crazyrun
image_speed = 0.75
if sprite_index = spr_rollgetup or sprite_index = spr_mach3hit
image_speed = 0.4



//Input buffer jumping
if key_jump
input_buffer_jump = 0





//Back to other states

    
            //Machslide
    if ((!key_attack && fightball = false) && grounded  ) or (character = "S" && (move = 0 or move != xscale) && grounded) && fightball = false
    {
    
    

    sprite_index = spr_machslidestart
scr_soundeffect(sfx_break)
    state = states.machslide
    image_index = 0

    }
	
	if move = -xscale && grounded  && fightball = false
	    {
    
    scr_soundeffect(sfx_machslideboost)

    sprite_index = spr_mach3boost

    state = states.machslide
    image_index = 0

    }
    
    //Machroll
if key_down && fightball = false && !place_meeting(x,y,obj_dashpad)
{
with instance_create(x,y,obj_jumpdust)
image_xscale = other.xscale
flash = false
state = states.machroll
vsp = 10
}


//Climbwall
if (!grounded && place_meeting(x+hsp,y,obj_solid)   && !place_meeting(x+sign(hsp),y,obj_slope) )
 or (grounded &&  place_meeting(x+hsp,y-32,obj_solid)   && place_meeting(x,y+1,obj_slope)  )
 {
wallspeed = 10
 state =states.climbwall
  }
        //Bump

    if (scr_solid(x+1,y) && xscale == 1) && !scr_slope() && (!place_meeting(x+sign(hsp),y,obj_slope) or place_meeting(x+sign(hsp),y,obj_solid))  && (grounded or fightball = true)
    {
if fightball = false
{
sprite_index = spr_hitwall
scr_soundeffect(sfx_groundpound)
scr_soundeffect(sfx_bumpwall)
    with (obj_camera) {

    shake_mag=20;
    shake_mag_acc=40/room_speed;
}

hsp = 0
image_speed = 0.35

    with (obj_baddie)
{
if (point_in_rectangle(x, y, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ))) {

stun = true
alarm[0] = 200
ministun = false
vsp = -5
hsp = 0
}
}
    flash = false

    state = states.bump
    hsp = -2.5
    vsp = -3
    mach2 = 0
    image_index = 0
    instance_create(x+10,y+10,obj_bumpeffect)

}
	else if fightball = true
	{
		with obj_player
		{
			sprite_index = spr_hitwall
	scr_soundeffect(sfx_groundpound)
	scr_soundeffect(sfx_bumpwall)
	    with (obj_camera) {

	    shake_mag=20;
	    shake_mag_acc=40/room_speed;
	}

	hsp = 0
	image_speed = 0.35

	    with (obj_baddie)
	{
	if (point_in_rectangle(x, y, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ))) {

	stun = true
	alarm[0] = 200
	ministun = false
	vsp = -5
	hsp = 0
	}
	}
	    flash = false

	    state = states.bump
	    hsp = -2.5
	    vsp = -3
	    mach2 = 0
	    image_index = 0
	    instance_create(x+10,y+10,obj_bumpeffect)
		
		}
		fightball = false
	
    }
	
}
    if (scr_solid(x-1,y) && xscale == -1) && !scr_slope() && (!place_meeting(x+sign(hsp),y,obj_slope) or place_meeting(x+sign(hsp),y,obj_solid))   && (grounded or fightball = true)
    {
		if fightball = false
{
sprite_index = spr_hitwall
scr_soundeffect(sfx_groundpound)
scr_soundeffect(sfx_bumpwall)
    with (obj_camera) {

    shake_mag=20;
    shake_mag_acc=40/room_speed;
}

hsp = 0
image_speed = 0.35

	    with (obj_baddie)
	{
	if (point_in_rectangle(x, y, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ))) {

	stun = true
	alarm[0] = 200
	ministun = false
	vsp = -5
	hsp = 0
	}
	}

    flash = false

    state = states.bump
    hsp = 2.5
    vsp = -3
    mach2 = 0
    image_index = 0
    instance_create(x-10,y+10,obj_bumpeffect)
}
	else if fightball = true
	{
		with obj_player
		{
			sprite_index = spr_hitwall
	scr_soundeffect(sfx_groundpound)
	scr_soundeffect(sfx_bumpwall)
	    with (obj_camera) {

	    shake_mag=20;
	    shake_mag_acc=40/room_speed;
	}

	hsp = 0
	image_speed = 0.35

	    with (obj_baddie)
	{
	if (point_in_rectangle(x, y, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ))) {

	stun = true
	alarm[0] = 200
	ministun = false
	vsp = -5
	hsp = 0
	}
	}
	    flash = false

	    state = states.bump
	    hsp = -2.5
	    vsp = -3
	    mach2 = 0
	    image_index = 0
	    instance_create(x+10,y+10,obj_bumpeffect)
		
		}
		fightball = false
	
    }
  }
    
	//Vigilante revolver
if key_slap2 && character = "V"
{
vsp = -5
state = states.revolver	
image_index = 0
	sprite_index = spr_playerV_airrevolver
	image_index = 0
	instance_create(x+image_xscale*20,y+20,obj_shotgunbullet)
scr_soundeffect(sfx_killingblow)
}

//Vigilante Dynamite
if key_shoot2 && character = "V" && !instance_exists(obj_dynamite)
{
	vsp = -5

state = states.dynamite
image_index = 0
sprite_index = spr_playerV_dynamitethrow
	with instance_create(x,y,obj_dynamite)
	{
		image_xscale = other.xscale
			movespeed = other.movespeed + 4
		vsp = -6
	}
}
    
       //Freefall
//   if key_down2 && !grounded
//   {
//   vsp = -4
 //  state = states.freefallprep
    
 //   hsp =0
    
 //   image_index = 0

//}


break


case "N":

hsp = xscale * movespeed
move = key_right + key_left

if fightball = false
vsp = 0

	//Move slightly

if key_up  && fightball = false
vsp = -3

if key_down  && fightball = false
vsp = 3


if movespeed < 24 && move = xscale
{
	{

movespeed += 0.1

	}

if !(instance_exists(crazyruneffectid)) && grounded
{
with instance_create(x,y,obj_crazyruneffect)
{
	playerid = other.object_index	
   other.crazyruneffectid = id
	
}
if sprite_index = spr_crazyrun
with instance_create(x,y,obj_dashcloud) 
{
	image_xscale = other.xscale
   sprite_index = spr_flamecloud
	
}
}

}
else if movespeed > 12 && move != xscale && pizzapepper = 0
movespeed -= 0.1

	//Pogo
	if key_attack2 && character = "N"  && fightball = false
	{
		sprite_index = spr_playerN_pogostart
		image_index = 0
		state = states.pogo
		pogospeed = movespeed
	}
	
if fightball = false
{
if movespeed > 20 && sprite_index != spr_crazyrun 
{

	flash = true
sprite_index = spr_crazyrun

}
else if movespeed <= 20 && sprite_index = spr_crazyrun
sprite_index = spr_playerN_jetpackboost	
}

	

	
	if character = "N"  && key_jump2  && fightball = false
{
			scr_soundeffect(sfx_jump)
		scr_soundeffect(sfx_woosh)
		jumpstop = false
vsp = -15
state = states.jump
sprite_index = spr_playerN_noisebombspinjump
image_index = 0
with instance_create(x,y,obj_jumpdust)
image_xscale = other.xscale
}

    //Machroll
if key_down && fightball = false && !place_meeting(x,y,obj_dashpad) && grounded
{
with instance_create(x,y,obj_jumpdust)
image_xscale = other.xscale
flash = false
sprite_index = spr_playerN_jetpackslide
state = states.machroll

}

//Jump Stop
if (!key_jump2) && jumpstop = false && vsp < 0.5 && fightball = true
{
vsp /= 10
jumpstop = true
}

if grounded && vsp > 0 && fightball = true
{
jumpstop = false
}


//Jump
if (input_buffer_jump < 8) && grounded && !(move == 1 && xscale == -1) && !(move == -1 && xscale == 1)   && fightball = true
{
scr_soundeffect(sfx_jump)
if sprite_index != spr_fightball
{
image_index =0
sprite_index = spr_mach3jump
}

vsp = -11

}




      //Bump

    if (scr_solid(x+sign(hsp),y))  &&   (!place_meeting(x+sign(hsp),y,obj_slope) or place_meeting(x+sign(hsp),y,obj_solid)) && (!place_meeting(x+sign(hsp),y,obj_metalblock) && character != "V")  && (!place_meeting(x+sign(hsp),y,obj_destructibles) && character != "V")  && !place_meeting(x+sign(hsp),y,obj_hungrypillar) 
    {

sprite_index = spr_hitwall
scr_soundeffect(sfx_groundpound)
scr_soundeffect(sfx_bumpwall)
    with (obj_camera) {

    shake_mag=20;
    shake_mag_acc=40/room_speed;
}

hsp = 0
image_speed = 0.35

	    with (obj_baddie)
	{
	if (point_in_rectangle(x, y, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ))) {

	stun = true
	alarm[0] = 200
	ministun = false
	vsp = -5
	hsp = 0
	}
	}

    flash = false

    state = states.bump
    hsp = 2.5
    vsp = -3
    mach2 = 0
    image_index = 0
    instance_create(x-10,y+10,obj_bumpeffect)

	
  }

break
}












//Effect






if !(instance_exists(dashcloudid)) && grounded 
with instance_create(x,y,obj_superdashcloud)
{
		if other.fightball = true
	instance_create(obj_player.x,obj_player.y,obj_slapstar)
	
	image_xscale = other.xscale

   other.dashcloudid = id
	
}





//Shoot Gun
//if key_shoot
//{
//if grounded
//vsp -= 5
//sprite_index = spr_player_pistolair
//image_index = 0
//state = states.pistol
//}







	

	//Taunt

if key_taunt2 && fightball = false
{
		scr_soundeffect(sfx_taunt)
	taunttimer = 20
		tauntstoredmovespeed = movespeed
tauntstoredsprite = sprite_index
	tauntstoredstate = state
	state = states.backbreaker
	if supercharged = true
	{
	image_index = 0
	sprite_index = choose(spr_supertaunt1,spr_supertaunt2,spr_supertaunt3,spr_supertaunt4)
	}
	else
	{
		taunttimer = 20
		image_index = random_range(0,11)
	sprite_index = spr_taunt	
	}
instance_create(x,y,obj_taunteffect)	
}
	


if !instance_exists(chargeeffectid) 
{
	
	with instance_create(x,y,obj_chargeeffect)
	{
	playerid = other.object_index	
	other.chargeeffectid = id
	
	}
}

if sprite_index = spr_mach4 or sprite_index = spr_fightball
image_speed = 0.4
if sprite_index = spr_crazyrun
image_speed = 0.75
if sprite_index = spr_rollgetup or sprite_index = spr_mach3hit
image_speed = 0.4



    //Super Jump
    if key_up && fightball = false && character = "P" && grounded
 {


   sprite_index = spr_superjumpprep

    state = states.Sjumpprep
    
    hsp =0
    
    image_index = 0
}