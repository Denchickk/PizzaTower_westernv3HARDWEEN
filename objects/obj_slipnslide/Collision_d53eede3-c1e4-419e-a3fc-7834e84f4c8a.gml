if drop = false
{
with (other)
{
var b = 1

for (i = 0; i <  array_length_1d(transformation)-1; i+=1)
if state = transformation[i] && state != states.barrel
b = 0

if b = 1
{
	if state = states.barrel
	{
		movespeed = 4
		sprite_index = spr_player_barrelslipnslide
		image_index = 0
		
other.drop = true
other.vsp = -5
	}
	else if state != states.slipnslide
	{
	

other.drop = true
other.vsp = -5
state = states.slipnslide
if movespeed < 12
movespeed = 12
	}
}
}

}









