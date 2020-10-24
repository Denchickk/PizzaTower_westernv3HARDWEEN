if !instance_exists(baddieID) && room != custom_lvl_room
instance_destroy()

if instance_exists(baddieID)
{
x = baddieID.x
y = baddieID.y
image_xscale  = baddieID.image_xscale
}

if instance_exists(baddieID) && place_meeting(x,y,obj_player1) && obj_player1.cutscene = false && obj_player1.state != states.firemouth
{

if baddieID.state != states.grabbed
{
with (obj_player1)
{



//if  ((state = states.throw) or (state = states.slam) or (state = states.punch) or (state = states.backkick) or (state = states.uppunch) or (state = states.backbreaker)) && other.baddieID.flying = false
//{ 
   // instance_create(other.baddieID.x,other.baddieID.y,obj_bangeffect)
   // if x != other.baddieID.x
  //  {
  //  other.baddieID.image_xscale = -sign(other.baddieID.x - x)
  //  }
  //  other.baddieID.state = states.rolling
  //  other.baddieID.stunned = 200
    
    
//}



//Insta kill
if  instance_exists(other.baddieID) && instakillmove = true && other.baddieID.state != states.grabbed && other.baddieID.thrown = false
{
	if state =states.mach3 && sprite_index != spr_mach3hit && (character = "P" or character = "V")
	{
		if fightball = false
	sprite_index = spr_mach3hit
	image_index = 0
	}
	if state =states.mach2 && grounded
	{
	machpunchAnim = true
image_index = 0

	}
	
	if state = states.mach3 or (state = states.freefall && freefallsmash > 10)
	other.baddieID.hp = 0
	
if state != states.hurt
other.baddieID.grabbedby = 1
else
other.baddieID.grabbedby = 2

scr_soundeffect(sfx_punch)

instance_destroy(other.baddieID)
	
global.hit += 1
global.combotime = 60
if !grounded && state != states.freefall && key_jump2
{
	if state = states.mach2 or (state = states.mach3 && fightball = false)
	sprite_index = spr_mach2jump
suplexmove = false
vsp = -11
}
}






//Stomp
if instance_exists(other.baddieID) && y < other.baddieID.y  && (attacking = false)  && sprite_index != spr_player_mach2jump && (( state = states.boots && vsp > 0) or state = states.jump  or state = states.mach1 or state = states.grab ) && vsp > 0 && other.baddieID.vsp >= 0 && sprite_index != spr_stompprep
{
	
	scr_soundeffect(sfx_stompenemy)


            if x != other.baddieID.x
        {
        other.baddieID.image_xscale = -sign(other.baddieID.x - x)
        }

image_index = 0
other.baddieID.state = states.stun
if other.baddieID.stunned < 100
other.baddieID.stunned = 100
if key_jump2 
{


instance_create(x,y+ 50, obj_stompeffect)


stompAnim = true
other.baddieID.image_index = 0
vsp = -14
if state = states.jump
sprite_index = spr_stompprep
}
else
{

instance_create(x,y+ 50, obj_stompeffect)


stompAnim = true
other.baddieID.image_index = 0
vsp = -9
if state = states.jump
sprite_index = spr_stompprep
}
}



//Pogo
if place_meeting(x,y+1, other) && state =states.pogo && vsp > 0 && other.baddieID.vsp >= 0 && sprite_index != spr_playerN_pogobounce
{
	switch (pogochargeactive)
{
	case false:
	pogospeedprev = false
	other.baddieID.vsp = -3
	scr_soundeffect(sfx_stompenemy)
	other.baddieID.state = states.stun
if other.baddieID.stunned < 100
other.baddieID.stunned = 100
sprite_index = spr_playerN_pogobounce
break

case true:
pogospeedprev = false
scr_throwenemy()
sprite_index = spr_playerN_pogobouncemach
break
}
instance_create(x,y+ 50, obj_stompeffect)
	image_index = 0
movespeed = 0
vsp = 0




}

	//Stun from touching
	 if instance_exists(other.baddieID) && other.baddieID.thrown= false && other.baddieID.stuntouchbuffer = 0 && other.baddieID.state != states.pizzagoblinthrow  && other.baddieID.vsp > 0 && state != states.punch && state != states.tackle && state != states.superslam && state != states.pogo && state != states.machslide  && state != states.freefall && state != states.mach2 && state != states.handstandjump && state != states.hurt && other.baddieID.state != states.chase
	 {

scr_soundeffect(sfx_bumpwall)

if state != states.bombpep && state != states.mach1 && state != states.crouchslide
movespeed = 0

 other.baddieID.stuntouchbuffer = 50


if other.baddieID.object_index = obj_pizzaball
global.golfhit += 1
if other.baddieID.stunned < 100
other.baddieID.stunned = 100
            if x != other.baddieID.x
        {
        other.baddieID.image_xscale = -sign(other.baddieID.x - x)
        }
		 other.baddieID.vsp = -5
other.baddieID.hsp = -other.baddieID.image_xscale * 2
 other.baddieID.state = states.stun
other.baddieID.image_index = 0


	 }


	 
	 

//Attack
if instance_exists(other.baddieID) && (state =states.handstandjump)
{



if  other.baddieID.thrown = false && (character = "P" or character = "N")
{

	movespeed = 0
image_index = 0
sprite_index = spr_haulingstart

state = states.grab

other.baddieID.state= states.grabbed
other.baddieID.grabbedby = 1
	

	}
	else
	{
if other.baddieID.thrown = true && !key_up 
	{
		sprite_index = choose(spr_suplexmash1,spr_suplexmash2,spr_suplexmash3, spr_suplexmash4, spr_punch)
						other.baddieID.hsp = xscale * 25
other.baddieID.vsp = 0
		
	}
else if !key_up
	{
				sprite_index = choose(spr_suplexmash1,spr_suplexmash2,spr_suplexmash3, spr_suplexmash4, spr_punch)
						other.baddieID.hsp = xscale * 6
							scr_soundeffect(sfx_killingblow)

				image_index =0
				state = states.tackle
movespeed = 0

other.baddieID.vsp = -6	
scr_throwenemy()
	}
	else
	{
		sprite_index = choose(spr_suplexmash1,spr_suplexmash2,spr_suplexmash3, spr_suplexmash4, spr_punch)
	other.baddieID.vsp = -14
	other.baddieID.hsp = 0
	}

	scr_soundeffect(sfx_killingblow)

				image_index =0
				state = states.tackle
movespeed = 0

scr_throwenemy()
	}

	
}


		
	
}
}
}



	if instance_exists(baddieID) && place_meeting(x,y,obj_player2) && obj_player2.cutscene = false && obj_player2.state != states.firemouth
	{

	if baddieID.state != states.grabbed
	{
	with (obj_player2)
	{



//if  ((state = states.throw) or (state = states.slam) or (state = states.punch) or (state = states.backkick) or (state = states.uppunch) or (state = states.backbreaker)) && other.baddieID.flying = false
//{ 
   // instance_create(other.baddieID.x,other.baddieID.y,obj_bangeffect)
   // if x != other.baddieID.x
  //  {
  //  other.baddieID.image_xscale = -sign(other.baddieID.x - x)
  //  }
  //  other.baddieID.state = states.rolling
  //  other.baddieID.stunned = 200
    
    
//}



//Insta kill
if  instance_exists(other.baddieID) && instakillmove = true && other.baddieID.state != states.grabbed
{
	if state =states.mach3 && sprite_index != spr_mach3hit && character = "P"
	{
		if fightball = false
	sprite_index = spr_mach3hit
	image_index = 0
	}
	if state =states.mach2 && grounded
	{
	machpunchAnim = true
image_index = 0

	}
if state != states.hurt
other.baddieID.grabbedby = 1
else
other.baddieID.grabbedby = 2

				if instance_exists(other.baddieID)
	with (other.baddieID)
	{
	
hp -= 1
	
	instance_create(x,y,obj_slapstar)
instance_create(x,y,obj_slapstar)
instance_create(x,y,obj_slapstar)
instance_create(x,y,obj_baddiegibs)
instance_create(x,y,obj_baddiegibs)
instance_create(x,y,obj_baddiegibs)
with (obj_camera) {

    shake_mag=3;
    shake_mag_acc=3/room_speed;
}
		alarm[3] = 3
global.hit += 1
if other.object_index = obj_pizzaball
global.golfhit += 1
global.combotime = 60
alarm[1] = 5
stunned = 1000
thrown = true
state = states.stun	
	}
	}
global.hit += 1
global.combotime = 60
if !grounded && state != states.freefall && key_jump2
{
	if state = states.mach2 or (state = states.mach3 && fightball = false)
	sprite_index = spr_mach2jump
suplexmove = false
vsp = -11
}
}






//Stomp
if instance_exists(other.baddieID) && y < other.baddieID.y  && (attacking = false)  && sprite_index != spr_player_mach2jump && (state = states.jump  or state = states.mach1 or state = states.grab ) && vsp > 0 && other.baddieID.vsp >= 0 && sprite_index != spr_stompprep
{
	
	scr_soundeffect(sfx_stompenemy)

            if x != other.baddieID.x
        {
        other.baddieID.image_xscale = -sign(other.baddieID.x - x)
        }

image_index = 0
other.baddieID.state = states.stun
if other.baddieID.stunned < 100
other.baddieID.stunned = 100
if key_jump2 
{


instance_create(x,y+ 50, obj_stompeffect)


stompAnim = true
other.baddieID.image_index = 0
vsp = -14
if state != states.grab
sprite_index = spr_stompprep
}
else
{

instance_create(x,y+ 50, obj_stompeffect)


stompAnim = true
other.baddieID.image_index = 0
vsp = -9
if state != states.grab
sprite_index = spr_stompprep
}
}



//Pogo
if place_meeting(x,y+1, other) && state =states.pogo && vsp > 0 && other.baddieID.vsp >= 0 && sprite_index != spr_playerN_pogobounce
{
	switch (pogochargeactive)
{
	case false:
	pogospeedprev = false
	other.baddieID.vsp = -3
	scr_soundeffect(sfx_stompenemy)
	other.baddieID.state = states.stun
if other.baddieID.stunned < 100
other.baddieID.stunned = 100
sprite_index = spr_playerN_pogobounce
break

case true:
pogospeedprev = false
instance_destroy(other.baddieID)
instance_destroy(other)
sprite_index = spr_playerN_pogobouncemach
break
}
instance_create(x,y+ 50, obj_stompeffect)
	image_index = 0
movespeed = 0
vsp = 0




}

	//Stun from touching
	 if instance_exists(other.baddieID) && other.baddieID.thrown= false && other.baddieID.state != states.pizzagoblinthrow  && other.baddieID.vsp > 0 && state != states.punch && state != states.tackle && state != states.superslam && state != states.pogo && state != states.machslide  && state != states.freefall && state != states.mach2  && state != states.hurt  && state != states.handstandjump
	 {

scr_soundeffect(sfx_bumpwall)

if state != states.bombpep && state != states.mach1
movespeed = 0

 other.baddieID.stuntouchbuffer = 50

if other.baddieID.object_index = obj_pizzaball
global.golfhit += 1
if other.baddieID.stunned < 100
other.baddieID.stunned = 100
            if x != other.baddieID.x
        {
        other.baddieID.image_xscale = -sign(other.baddieID.x - x)
        }
		 other.baddieID.vsp = -5
other.baddieID.hsp = -other.baddieID.image_xscale * 2
 other.baddieID.state = states.stun
other.baddieID.image_index = 0


	 }

	 //Ground Pound
	 if  instance_exists(other.baddieID) && ( state = states.superslam or state = states.freefall)
	 {
		 
		 scr_soundeffect(sfx_hitenemy)
		 

		 
		 global.combotime = 60
		 instance_create(other.baddieID.x,other.baddieID.y,obj_baddiegibs)
other.baddieID.flash = true
other.baddieID.state = states.stun
    other.baddieID.hp -= 1
	if other.baddieID.stunned < 100
other.baddieID.stunned = 100
    instance_create(x,y,obj_bumpeffect)
	instance_create(other.baddieID.x,other.baddieID.y,obj_bangeffect)
	
	if other.baddieID.hp <= 0
		{
	other.baddieID.stunned =  200
    other.baddieID.state = states.stun
		}

		vsp = -7
		state = states.normal
		    other.baddieID.vsp = -4
    other.baddieID.hsp = xscale * 5

	
	 }
	 
	 

	
    //Grab
	    if instance_exists(other.baddieID)  && (state = states.handstandjump)  
    {
		if shotgunAnim = false
		{
movespeed = 0
image_index = 0
sprite_index = spr_haulingstart

state = states.grab

other.baddieID.state= states.grabbed
other.baddieID.grabbedby = 2
		}
		else
		{
			
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


other.baddieID.grabbedby = 2
instance_destroy(other.baddieID)
instance_destroy(other)
global.hit += 1
global.combotime = 60
		}
	}

	
	}
	}
	