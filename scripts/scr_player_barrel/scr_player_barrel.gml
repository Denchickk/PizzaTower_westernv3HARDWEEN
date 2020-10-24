

move = key_right + key_left


//Float
if place_meeting(x,y,obj_water) && sprite_index != spr_player_barrelfloat
sprite_index = spr_player_barrelfloat


//Go foward while rolling
if sprite_index != spr_player_barrelmove &&
sprite_index != spr_player_barrelidle
hsp = xscale * movespeed

//Trip and roll
if sprite_index = spr_player_barrelslipnslide && floor(image_index) = image_number - 1
{

	sprite_index = spr_player_barrelroll 
	movespeed = 12
}

//Destroy barrel
if place_meeting(x+hsp,y,obj_solid) && sprite_index = spr_player_barrelroll && !place_meeting(x+hsp,y,obj_destructibles)
{
state = states.bump
hsp = -xscale * 5
vsp = -7
}

//Fall
if !grounded && (sprite_index = spr_player_barrelmove or
sprite_index = spr_player_barrelidle)
{
sprite_index = spr_player_barrelfall
}
//Land
if grounded && sprite_index = spr_player_barrelfall
{
image_index = 0
sprite_index = spr_player_barrelcrouch

}
//Go back to barrel normal
if floor(image_index) = image_number -1 && sprite_index = spr_player_barrelcrouch
{

sprite_index = spr_player_barrelidle
}

//Movespeed

if sprite_index = spr_player_barrelmove or
sprite_index = spr_player_barrelidle or sprite_index = spr_player_barrelfloat
or sprite_index = spr_player_barrelfall
{
	
//Jump out of barrel
if key_jump
{
vsp = -11
image_index = 0
sprite_index = spr_jump
instance_create(x,y,obj_barrel)
state = states.jump
}


hsp = movespeed * move


if move != 0
{
xscale = move
sprite_index = spr_player_barrelmove
}
else if sprite_index = spr_player_barrelmove
sprite_index = spr_player_barrelidle

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