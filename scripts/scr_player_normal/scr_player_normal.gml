




//Turn

if dir != xscale
{
dir = xscale
movespeed = 2 
facehurt = false

}

mach2 = 0
move = key_left + key_right;

if !place_meeting(x,y+1, obj_railh) && !place_meeting(x,y+1, obj_railh2)
hsp = move * movespeed;
else if place_meeting(x,y+1, obj_railh)
hsp = move * movespeed -5
else if place_meeting(x,y+1, obj_railh2)
hsp = move * movespeed +5




//Idles Anim
if character = "P" or character = "N" or character = "V"
{
if machslideAnim = false && landAnim = false && shotgunAnim = false
{
    if move == 0
    {
    if idle < 400
    idle ++
    if idle >= 150 && floor(image_index) = image_number -1
    {
    facehurt = false
    idle = 0
    image_index = 0
    }
    if idle >= 150 && sprite_index != spr_idle1 && sprite_index != spr_idle2 && sprite_index != spr_idle3 && sprite_index != spr_idle4  && sprite_index != spr_idle5  && sprite_index != spr_idle6  
    {
    randomise()
    idleanim = random_range(0,100)
    if idleanim <= 16
    sprite_index = spr_idle1
    if idleanim > 16  &&  idleanim < 32
    sprite_index = spr_idle2
    if idleanim > 32   &&  idleanim < 48
    sprite_index = spr_idle3
	   if idleanim > 48   &&  idleanim < 64
    sprite_index = spr_idle4
	   if idleanim > 64   &&  idleanim < 80
    sprite_index = spr_idle5
	   if idleanim > 80  
    sprite_index = spr_idle6
    image_index = 0
     }
    if idle < 150
    {
    
    if facehurt = false
    {
    if windingAnim < 1800 or angry = true or global.playerhealth = 1 
    {
    
    start_running = true
    movespeed = 0
    //if key_run
    //sprite_index = spr_player_panic
    //else
if sprite_index = spr_playerV_revolverend
{
}
else if global.minutes = 0 && global.seconds = 0
sprite_index = spr_hurtidle    
else if global.panic = true or global.snickchallenge = true
sprite_index = spr_panic
else if angry = true
sprite_index = spr_3hpidle
else
sprite_index = spr_idle
    }
    else if (character = "P" or character = "N" or character = "V")
    {
    idle = 0
    windingAnim --
sprite_index = spr_winding
    }
    }
    else if facehurt = true && (character = "P" or character = "N" or character = "V")
    {
    windingAnim = 0
    if sprite_index != spr_facehurtup && sprite_index !=spr_facehurt
    {
    sprite_index = spr_facehurtup
    }
    if floor(image_index) = image_number - 1 && sprite_index = spr_facehurtup
    {
    sprite_index =spr_facehurt
    }
    }
    }
    }
    if move != 0 
    {
    machslideAnim = false
    idle = 0
    facehurt = false

 if global.minutes = 0 && global.seconds = 0
 sprite_index = spr_hurtwalk
 else if angry = true
 sprite_index = spr_3hpwalk
 else
sprite_index = spr_move
    }
    if move != 0 
    {
    xscale = move
    }
}
}


if character = "S"
{
	if machslideAnim = false
	{
  if move == 0
    {
    if idle < 400
    idle ++
    if idle >= 100 && floor(image_index) = image_number -1
    {
   
    idle = 0
    image_index = 0
    }
    if idle >= 100 && sprite_index != spr_idle1 
    {
    sprite_index = spr_idle1
	
     }
	 	     if idle < 100
		sprite_index = spr_idle
    
	}
	    if move != 0 
    {
    machslideAnim = false
sprite_index = spr_move
 xscale = move
    }
	}
	}

//Land Anim

if landAnim = true 
{
    if shotgunAnim = false
    {
    if move == 0
    {
    movespeed = 0
    sprite_index = spr_land
    if floor(image_index) = image_number - 1
    landAnim = false
    }
    if move != 0 
    {
    sprite_index = spr_land2
    
    
    
    
    if floor(image_index) = image_number -1
    {
    landAnim = false
    sprite_index = spr_move
    image_index = 0
    }
    }
    }
    if shotgunAnim = true
    {
    sprite_index = spr_shotgunland
    if floor(image_index) = image_number - 1
    {
    landAnim = false
    sprite_index = spr_move
    image_index = 0
    }
    }
}

//MachSlide End Anim

if machslideAnim = true
{

sprite_index = spr_machslideend
if floor(image_index) = image_number -1 && sprite_index = spr_machslideend
machslideAnim = false

}

if sprite_index = spr_playerV_revolverend &&  floor(image_index) = image_number -1 
{
	sprite_index = spr_idle
}

//Shotgun Anim


if sprite_index = spr_shotgunshoot && floor(image_index) = image_number-1
{
sprite_index = spr_shotgunidle
}

if landAnim = false 
{
if shotgunAnim = true && move == 0 && sprite_index != spr_shotgunshoot
{
sprite_index = spr_shotgunidle
}
else if shotgunAnim = true && sprite_index != spr_shotgunshoot
sprite_index = spr_shotgunwalk
}


if scr_solid(x+sign(hsp),y) && xscale == 1 && move == 1 && !place_meeting(x+1,y,obj_slope)
{
movespeed = 0

}
if scr_solid(x+sign(hsp),y) && xscale == -1 && move == -1 && !place_meeting(x-1,y,obj_slope)
{
movespeed = 0
}
jumpstop = false




//Fall off
if !grounded && !key_jump 
{
	if shotgunAnim = false
	{
	sprite_index = spr_fall
	}
	else 
		sprite_index = spr_shotgunfall
	jumpAnim = false
	state = states.jump
	image_index = 0
}




//Jump
if key_jump && grounded && !key_down 
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





//Input jumping

if (grounded && (input_buffer_jump < 8) && !key_down &&  !key_attack && vsp > 0 ) 
{

scr_soundeffect(sfx_jump)

sprite_index = spr_jump


if shotgunAnim = true
{
sprite_index = spr_shotgunjump
}

with instance_create(x,y,obj_highjumpcloud2)
image_xscale = other.xscale
stompAnim = false

vsp = -11



state = states.jump
jumpAnim = true
jumpstop = false
image_index = 0

freefallstart = 0


}





//Crouch
if ((key_down && grounded) or (scr_solid(x,y-3) && grounded)) && (character = "P" or character = "N" or character = "V")
{
state = states.crouch
landAnim = false
crouchAnim = true
image_index = 0
idle = 0
}



//Movespeed

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






//if key_run //&& movespeed > 9
//movespeed -= 0.1






momemtum = false
if move != 0
{

xscale = move
if movespeed < 3 && move != 0
image_speed = 0.35
else if movespeed > 3 && movespeed < 6 
image_speed = 0.45
else
image_speed = 0.60
}
else 
image_speed = 0.35




//Suplex Dash
if key_slap2  && (character = "P" or character = "N")
{
suplexmove = true
suplexdashsnd =	audio_play_sound(sfx_suplexdash,1,0)
state = states.handstandjump
image_index = 0
if shotgunAnim = false
sprite_index = spr_suplexdash
else
sprite_index = spr_shotgunsuplexdash
if character = "P"
movespeed = 6
else
movespeed = 4
}

if key_shoot2 && (shotgunAnim = true) 
{
	scr_soundeffect(sfx_killingblow)
		state = states.shotgun
		with instance_create(x,y,obj_pistoleffect)
image_xscale = other.image_xscale

image_index = 0
sprite_index = spr_shotgunshoot
if character = "P"
{
instance_create(x+image_xscale*20,y+20,obj_shotgunbullet)
with instance_create(x+image_xscale*20,y+20,obj_shotgunbullet)
spdh= 4
with instance_create(x+image_xscale*20,y+20,obj_shotgunbullet)
spdh= -4
}
}




//Jetpack flash
if pogochargeactive = true or (pizzapepper > 0 && character = "N")
{

	if key_attack2
{
	scr_soundeffect(sfx_noisewoah)
state =states.Sjumpprep
image_index = 0
if !key_up
sprite_index = spr_playerN_jetpackstart
else
sprite_index = spr_superjumpprep
hsp = 0
vsp = 0
}
	
}


//Noise Bomb
//if key_slap2 && character = "N" && !key_down && key_up
//{
//	state = states.throw
//	sprite_index = spr_playerN_noisebombthrow
//	image_index = 0
//	with instance_create(x,y,obj_playerbomb)
//	{
//	movespeed = 7
//	vsp = -11
//	image_xscale = other.xscale
//	}
//}

//Spin attack
//if key_slap2 && character = "N" && !key_attack
//{
//	scr_soundeffect(sfx_Nspin)
//		scr_soundeffect(sfx_suplexdash)
//state = states.punch
//sprite_index=  spr_playerN_spin
//image_index = 0
//movespeed = 15
//}

    //Mach1
    if key_attack && !place_meeting(x+xscale,y,obj_solid)  && (character = "P" or character = "V")
    {

		if pizzapepper = 0
		{
		movespeed = 6
sprite_index = spr_mach1
jumpAnim = true
state = states.mach1
image_index = 0
		}
		else
		{
					movespeed = 21
sprite_index = spr_crazyrun
jumpAnim = true
			state = states.mach3
		movespeed = 20
		}
    }
	
	//Pogo
	if key_attack && character = "N"  && pogochargeactive = false && !key_slap2 && pizzapepper = 0
	{
		sprite_index = spr_playerN_pogostart
		image_index = 0
		state = states.pogo
	}
	
	
	
	//Snick walk
    if character = "S" && move != 0 && !place_meeting(x+xscale,y,obj_solid) 
    {
		
		movespeed = 6
sprite_index = spr_mach1
jumpAnim = true
state = states.mach1
image_index = 0
    }

//Snick peelout
    if key_attack  && !place_meeting(x+xscale,y,obj_solid)  && character = "S" && grounded
    {
state = states.handstandjump
movespeed = 0

    }
	





//Vigilante Boots 
//if key_attack && character = "V"
//{
//image_index = 0
//sprite_index = spr_playerV_bootsout
//state = states.boots
//movespeed = 2
//}

//Vigilante Dynamite
if key_shoot2 && character = "V" && !instance_exists(obj_dynamite)
{
		if move = 0
	movespeed = 0
state = states.dynamite
image_index = 0
sprite_index = spr_playerV_dynamitethrow
	with instance_create(x,y,obj_dynamite)
	{
		image_xscale = other.xscale
		movespeed = 6
		vsp = -6
	}
}

//Vigilante revolver
if key_slap2 && character = "V"
{
	
	if move = 0
	movespeed = 0
state = states.revolver	
image_index = 0
sprite_index = spr_playerV_revolverstart
	
}

////Shoot gun
//if key_shoot2 && !key_up 
//{

//sprite_index =spr_player_pistol
//state = states.pistol
//image_index = 0
//shoot = true
//}
//else
////Aim gun
//if key_up && key_shoot2 && move = 0
//{

//sprite_index =spr_player_shootup
//state = states.pistol
//image_index = 0
//shoot = true
//}
//else if key_up && key_shoot2 && move != 0
//{

//sprite_index =spr_player_shootdiagonal
//state = states.pistol
//image_index = 0
//shoot = true
//}
    
   //Hookshot 
//if key_slap2 && character = "N" 
//{
//image_index = 0
//sprite_index = spr_playerN_hookshot1
//state = states.hookshot

//with instance_create(x,y + 10,obj_hookshot) 
//{

//hsp = other.xscale * 30
//}

//}

//Effects


if move != 0 && (floor(image_index) = 3 or floor(image_index) = 8) && steppy = false && character != "V"
{
instance_create(x,y+43,obj_cloudeffect)

steppy = true
}

if move != 0 && floor(image_index) != 3 && floor(image_index) != 8
steppy = false


	//Taunt

if key_taunt2 
{
	
	scr_soundeffect(sfx_taunt)
	taunttimer = 20
		tauntstoredmovespeed = movespeed
tauntstoredsprite = sprite_index
	tauntstoredstate = state
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




//if mouse_wheel_up() && character = "N"
//{
//state = states.backbreaker
//sprite_index = spr_taunt
//}