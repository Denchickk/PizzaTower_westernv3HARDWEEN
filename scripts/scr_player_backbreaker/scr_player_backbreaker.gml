mach2 = 0
if sprite_index != spr_player_machfreefall
{
hsp = 0
movespeed = 0
}
else
hsp = xscale * movespeed

move = key_right2 + key_left2

landAnim = false
//Tower Intro
if sprite_index = spr_player_machfreefall && place_meeting(x,y+1,obj_solid)
{
	state =states.machslide
sprite_index= spr_player_crouchslide

}
//Taunt

if sprite_index = spr_taunt or sprite_index = spr_supertaunt1 or sprite_index =  spr_supertaunt2 or
sprite_index = spr_supertaunt3 or sprite_index = spr_supertaunt4
{
	

/*
if key_up2
{
if character = "P"
{
character = "N"
paletteselect = 0
}
else if character = "N"
{
character = "V"
paletteselect = 0
}
else if character = "V"
{
character = "P"
paletteselect = 1
}
scr_characterspr()
	scr_soundeffect(sfx_taunt)
	taunttimer = 20
	state = states.backbreaker
	if supercharged = true
	{
	image_index = 0
	sprite_index = choose(spr_supertaunt1,spr_supertaunt2,spr_supertaunt3,spr_supertaunt4)
	tauntstoredstate = states.normal
	
	}
	else
	{

taunttimer = 20
		image_index = random_range(0,11)
	sprite_index = spr_taunt	
	tauntstoredstate = states.normal
	}
instance_create(x,y,obj_taunteffect)	
}
*/
}

	if supercharged = true && !instance_exists(obj_tauntaftereffectspawner)
	{

		instance_create(x,y,obj_tauntaftereffectspawner)
	   with (obj_baddie)
{
if (point_in_rectangle(x, y, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ))) 
{
instance_destroy()
}
}
            with (obj_camera) {

    shake_mag=10;
    shake_mag_acc=30/room_speed;
}
supercharged = false
	}
	
taunttimer --
vsp = 0

if floor(image_index) = image_number -1 && ( sprite_index = spr_supertaunt1 or sprite_index =  spr_supertaunt2 or
sprite_index = spr_supertaunt3 or sprite_index = spr_supertaunt4)
{
		if global.combotime != 0 && global.combo > 0
	{
	global.combo = 0
	global.combotime = 0
	}
			movespeed = tauntstoredmovespeed 
sprite_index = tauntstoredsprite 
state = tauntstoredstate 
}

if sprite_index = spr_taunt && taunttimer = 0
{
			movespeed = tauntstoredmovespeed 
sprite_index = tauntstoredsprite 
state = tauntstoredstate 
}


//if character = "N" && sprite_index = spr_taunt
//{
//image_index = (gamepad_button_value(0, gp_shoulderlb) * 20)


//if gamepad_button_value(0, gp_shoulderlb) = 0
//state = states.normal
//}


//Eat spag
if floor(image_index) = image_number -1 && sprite_index = spr_player_eatspaghetti
state = states.normal


//Level intro
if floor(image_index) = image_number -1 && sprite_index = spr_Timesup && place_meeting(x,y,obj_exitgate)
{
state = states.normal

}

//Ball goal
if floor(image_index) = image_number -1 && (sprite_index = spr_player_levelcomplete or sprite_index = spr_playerN_victory)
state = states.normal
//Phone
if key_jump && sprite_index = spr_player_phoneidle
{
global.panic = true
sprite_index = spr_bossintro
image_index = 0
with instance_create(x,y,obj_debris)
{
image_index = 0
sprite_index = spr_phonedebris
}
}

//Scream at boss
if global.miniboss = true && sprite_index = spr_bossintro && floor(image_index) = image_number -1
state = states.normal

image_speed = 0.4