switch(object_index){
    case obj_player2: 
{
	if fightball = false
xscale = -obj_player1.xscale


obj_player1.baddiegrabbedID = id

if obj_player1.state = states.mach3 && fightball = true
{
	x = obj_player1.x 
	y = obj_player1.y 
}

if obj_player1.state = states.grabbing or obj_player1.state = states.grab or obj_player1.state = states.throw or obj_player1.state = states.slam or obj_player1.state = states.tacklecharge 
{

x = obj_player1.x 

if obj_player1.sprite_index != obj_player1.spr_haulingstart 
{
y = obj_player1.y - 40
}
else
if floor(obj_player1.image_index) = 0
{
	y = obj_player1.y 
}
else
if floor(obj_player1.image_index) = 1
{
	y = obj_player1.y  -10
}
else
if floor(obj_player1.image_index) = 2
{
	y = obj_player1.y -20
}
else
if floor(obj_player1.image_index) = 3
{
	y = obj_player1.y -30
}
xscale = -obj_player1.xscale
}
with (obj_player1)
{

//Suplex mash
scr_getinput();

move = key_left2 + key_right2;

if (key_slap) && (sprite_index = spr_grab)
{


global.hit += 1
if other.object_index = obj_pizzaball
global.golfhit += 1
global.combotime = 60
image_index = 0
sprite_index = choose(spr_suplexmash1, spr_suplexmash2, spr_suplexmash3, spr_suplexmash4)


instance_create(other.x,other.y,obj_slapstar)
instance_create(other.x,other.y,obj_baddiegibs)
other.flash = true
        with (obj_camera) {

    shake_mag=3;
    shake_mag_acc=3/room_speed;
}
}



if  !((state = states.grab) or (state = states.mach3 && fightball = true) or  (state = states.finishingblow) or (state = states.grabbing) or (state = states.throw) or (state = states.slam) or (state = states.tacklecharge) or (state = states.punch) or (state = states.superslam) or (state = states.backkick) or (state = states.uppunch) or (state = states.shoulder))
{
baddiegrabbedID = obj_null
	obj_player2.x = obj_player1.x 
	obj_player2.y = obj_player1.y 
other.state = states.hurt
other.alarm[8] = 60
other.alarm[7] = 120
other.image_index = 0
}
}



if obj_player1.state = states.tacklecharge
{
x = obj_player1.x + (obj_player1.xscale * 20)
y = obj_player1.y	

}


if obj_player1.state = states.finishingblow && obj_player1.image_index < 5
{
x = obj_player1.x + (obj_player1.xscale * 60)
y = obj_player1.y	

}




if place_meeting(x,y,obj_swordhitbox)
{
	thrown = true

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

state = states.hurt
if scr_solid(x,y)
{
x = obj_player1.x
y = obj_player1.y
}


other.alarm[8] = 60
other.alarm[7] = 120
with (obj_player1)
{
	move = key_right + key_left
if sprite_index = spr_uppercutfinishingblow
{
	other.movespeed = 0
other.vsp = -25

}
else
{
other.movespeed = 15
other.vsp = -6	
}
}
}







//if obj_player1.state = states.backbreaker && floor(obj_player1.image_index) < 2
//{
//x = obj_player1.x + (-xscale *8)
//y = obj_player1.y - 45
//}

//if obj_player1.state = states.backbreaker && floor(obj_player1.image_index) >= 2
//{
//x = obj_player1.x
//y = obj_player1.y 
//state = states.hit
//hsp = -xscale * 5
//vsp = -12
//instance_create(x,y,obj_bangeffect)
//}




if (obj_player1.state = states.superslam && obj_player1.sprite_index = obj_player1.spr_piledriver) 
{
if obj_player1.character = "P"
{
if floor(obj_player1.image_index) = 0
{
//depth = 0
x = obj_player1.x + (obj_player1.xscale * 10)
y = obj_player1.y
}
if floor(obj_player1.image_index) = 1
{
//depth = 0
x = obj_player1.x + (obj_player1.xscale * 5)
y = obj_player1.y
}
if floor(obj_player1.image_index) = 2
{
//depth = 0
x = obj_player1.x 
y = obj_player1.y
}
if floor(obj_player1.image_index) = 3
{
//depth = 0
x = obj_player1.x + (obj_player1.xscale * -5)
y = obj_player1.y
}
if floor(obj_player1.image_index) = 4
{
//depth = 0
x = obj_player1.x + (obj_player1.xscale * -10)
y = obj_player1.y
}
if floor(obj_player1.image_index) = 5
{
//depth = -8
x = obj_player1.x + (obj_player1.xscale * -5)
y = obj_player1.y
}
if floor(obj_player1.image_index) = 6
{
//depth = -8
x = obj_player1.x 
y = obj_player1.y
}
if floor(obj_player1.image_index) = 7
{
//depth = -8
x = obj_player1.x + (obj_player1.xscale * 5)
y = obj_player1.y
}
}
		else
		{

	x = obj_player1.x 
	y = obj_player1.y - 40
	}
	}





if (obj_player1.state = states.grab && obj_player1.sprite_index = obj_player1.spr_swingding)
	{

	if floor(obj_player1.image_index) = 0
	{
	//depth = -8
	x = obj_player1.x + (obj_player1.xscale * 25)
	y = obj_player1.y
	}
	if floor(obj_player1.image_index) = 1
	{
//	depth = -8
	x = obj_player1.x 
	y = obj_player1.y
	}
	if floor(obj_player1.image_index) = 2
	{
//	depth = -8
	x = obj_player1.x + (obj_player1.xscale * -25)
	y = obj_player1.y
	}
	if floor(obj_player1.image_index) = 3
	{
//	depth = 0
	x = obj_player1.x + (obj_player1.xscale * -50)
	y = obj_player1.y
	}
	if floor(obj_player1.image_index) = 4
	{
	//depth = 0
	x = obj_player1.x + (obj_player1.xscale * -25)
	y = obj_player1.y
	}
	if floor(obj_player1.image_index) = 5
	{
//	depth = 0
	x = obj_player1.x 
	y = obj_player1.y
	}
	if floor(obj_player1.image_index) = 6
	{
//	depth = 0
	x = obj_player1.x + (obj_player1.xscale * 25)
	y = obj_player1.y
	}
	if floor(obj_player1.image_index) = 7
	{
//	depth = 0
	x = obj_player1.x + (obj_player1.xscale * 50)
	y = obj_player1.y
	}
	

	}



if obj_player1.sprite_index = obj_player1.spr_piledriverland && floor(obj_player1.image_index) = obj_player1.image_number-1
{
	
with (obj_player1)
{


state = states.jump
vsp = -8
sprite_index = spr_machfreefall

}
thrown = true
instance_create(x,y,obj_slapstar)
instance_create(x,y,obj_baddiegibs)
flash = true

x =obj_player1.x
y = obj_player1.y
state = states.hurt
hsp = -image_xscale * 10
vsp = -10
other.alarm[8] = 60
other.alarm[7] = 120
}

if obj_player1.state != states.mach3
	sprite_index = spr_hurt
	else
	{
	sprite_index = spr_fightball
	image_index = obj_player1.image_index
	}

}



break;

    case obj_player1: 
{
if fightball = false
	xscale = -obj_player2.xscale


	obj_player2.baddiegrabbedID = id

	if obj_player2.state = states.mach3 && fightball = true
	{
		x = obj_player2.x 
		y = obj_player2.y 
	}

	if obj_player2.state = states.grabbing or obj_player2.state = states.grab or obj_player2.state = states.throw or obj_player2.state = states.slam or obj_player2.state = states.tacklecharge 
	{

	x = obj_player2.x 

	if obj_player2.sprite_index != obj_player2.spr_haulingstart 
	{
	y = obj_player2.y - 40
	}
	else
	if floor(obj_player2.image_index) = 0
	{
		y = obj_player2.y 
	}
	else
	if floor(obj_player2.image_index) = 1
	{
		y = obj_player2.y  -10
	}
	else
	if floor(obj_player2.image_index) = 2
	{
		y = obj_player2.y -20
	}
	else
	if floor(obj_player2.image_index) = 3
	{
		y = obj_player2.y -30
	}
	xscale = -obj_player2.xscale
	}
	with (obj_player2)
	{

	//Suplex mash
	scr_getinput();

	move = key_left2 + key_right2;

	if (key_slap) && (sprite_index = spr_grab)
	{


	global.hit += 1
	if other.object_index = obj_pizzaball
	global.golfhit += 1
	global.combotime = 60
	image_index = 0
	sprite_index = choose(spr_suplexmash1, spr_suplexmash2, spr_suplexmash3, spr_suplexmash4)


	instance_create(other.x,other.y,obj_slapstar)
	instance_create(other.x,other.y,obj_baddiegibs)
	other.flash = true
	        with (obj_camera) {

	    shake_mag=3;
	    shake_mag_acc=3/room_speed;
	}
	}



	if  !((state = states.grab) or  (state = states.mach3 && fightball = true) or  (state = states.finishingblow) or (state = states.grabbing) or (state = states.throw) or (state = states.slam) or (state = states.tacklecharge) or (state = states.punch) or (state = states.superslam) or (state = states.backkick) or (state = states.uppunch) or (state = states.shoulder))
	{
baddiegrabbedID = obj_null	
	obj_player1.x = obj_player2.x 
	obj_player1.y = obj_player2.y 
	other.state = states.hurt
	other.alarm[8] = 60
	other.alarm[7] = 120
	other.image_index = 0
	}
	}



if obj_player2.state = states.tacklecharge
{
x = obj_player2.x + (obj_player2.xscale * 20)
y = obj_player2.y	

}


	if obj_player2.state = states.finishingblow && obj_player2.image_index < 5
	{
	x = obj_player2.x + (obj_player2.xscale * 60)
	y = obj_player2.y	

	}




	if place_meeting(x,y,obj_swordhitbox)
	{
	

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
thrown = true
	state = states.hurt
	if scr_solid(x,y)
{
x = obj_player2.x
y = obj_player2.y
}
	other.alarm[8] = 60
	other.alarm[7] = 120
	with (obj_player2)
	{
		move = key_right + key_left
	if sprite_index = spr_uppercutfinishingblow
	{
		other.movespeed = 0
	other.vsp = -25

	}
	else
	{
	other.movespeed = 15
	other.vsp = -6	
	}
	}
	}

	







	//if obj_player2.state = states.backbreaker && floor(obj_player2.image_index) < 2
	//{
	//x = obj_player2.x + (-xscale *8)
	//y = obj_player2.y - 45
	//}

	//if obj_player2.state = states.backbreaker && floor(obj_player2.image_index) >= 2
	//{
	//x = obj_player2.x
	//y = obj_player2.y 
	//state = states.hit
	//hsp = -xscale * 5
	//vsp = -12
	//instance_create(x,y,obj_bangeffect)
	//}




	if (obj_player2.state = states.superslam && obj_player2.sprite_index = obj_player2.spr_piledriver) 
	{
if obj_player2.character = "P"
{
	if floor(obj_player2.image_index) = 0
	{
//	depth = 0
	x = obj_player2.x + (obj_player2.xscale * 10)
	y = obj_player2.y
	}
	if floor(obj_player2.image_index) = 1
	{
//	depth = 0
	x = obj_player2.x + (obj_player2.xscale * 5)
	y = obj_player2.y
	}
	if floor(obj_player2.image_index) = 2
	{
	//depth = 0
	x = obj_player2.x 
	y = obj_player2.y
	}
	if floor(obj_player2.image_index) = 3
	{
//	depth = 0
	x = obj_player2.x + (obj_player2.xscale * -5)
	y = obj_player2.y
	}
	if floor(obj_player2.image_index) = 4
	{
	//depth = 0
	x = obj_player2.x + (obj_player2.xscale * -10)
	y = obj_player2.y
	}
	if floor(obj_player2.image_index) = 5
	{
//	depth = -8
	x = obj_player2.x + (obj_player2.xscale * -5)
	y = obj_player2.y
	}
	if floor(obj_player2.image_index) = 6
	{
	//depth = -8
	x = obj_player2.x 
	y = obj_player2.y
	}
	if floor(obj_player2.image_index) = 7
	{
	//depth = -8
	x = obj_player2.x + (obj_player2.xscale * 5)
	y = obj_player2.y
	}
}
		else
		{

	x = obj_player2.x 
	y = obj_player2.y - 40
	}
	}

if (obj_player2.state = states.grab && obj_player2.sprite_index = obj_player2.spr_swingding)
	{

	if floor(obj_player2.image_index) = 0
	{
	depth = -8
	x = obj_player2.x + (obj_player2.xscale * 25)
	y = obj_player2.y
	}
	if floor(obj_player2.image_index) = 1
	{
	depth = -8
	x = obj_player2.x 
	y = obj_player2.y
	}
	if floor(obj_player2.image_index) = 2
	{
	depth = -8
	x = obj_player2.x + (obj_player2.xscale * -25)
	y = obj_player2.y
	}
	if floor(obj_player2.image_index) = 3
	{
	depth = 0
	x = obj_player2.x + (obj_player2.xscale * -50)
	y = obj_player2.y
	}
	if floor(obj_player2.image_index) = 4
	{
	depth = 0
	x = obj_player2.x + (obj_player2.xscale * -25)
	y = obj_player2.y
	}
	if floor(obj_player2.image_index) = 5
	{
	depth = 0
	x = obj_player2.x 
	y = obj_player2.y
	}
	if floor(obj_player2.image_index) = 6
	{
	depth = 0
	x = obj_player2.x + (obj_player2.xscale * 25)
	y = obj_player2.y
	}
	if floor(obj_player2.image_index) = 7
	{
	depth = 0
	x = obj_player2.x + (obj_player2.xscale * 50)
	y = obj_player2.y
	}
	

	}
	
	
if obj_player2.sprite_index = obj_player2.spr_piledriverland && floor(obj_player2.image_index) = obj_player2.image_number-1
{
	
with (obj_player2)
{


state = states.jump
vsp = -8
sprite_index = spr_machfreefall

}
thrown = true
instance_create(x,y,obj_slapstar)
instance_create(x,y,obj_baddiegibs)
flash = true

x =obj_player2.x
y = obj_player2.y
state = states.hurt
hsp = -image_xscale * 10
vsp = -10
other.alarm[8] = 60
other.alarm[7] = 120
}

if obj_player2.state != states.mach3
	sprite_index = spr_hurt
	else
	{
	sprite_index = spr_fightball
	image_index = obj_player2.image_index
	
	}

}


	



        break;
		
}


		image_speed=  0.4