hsp = image_xscale * movespeed

if x != obj_player.x
image_xscale = -sign(x - obj_player.x)

//Go in idle from land
if sprite_index = spr_fakepeppino_land && floor(image_index) = image_number - 1
{
image_index = 0
sprite_index = spr_fakepeppino_idle
}

//Run again
if sprite_index = spr_fakepeppino_idle && floor(image_index) = image_number - 1
{
movespeed = 8
	image_index = 0
sprite_index = spr_fakepeppino_walk
state = states.walk
}