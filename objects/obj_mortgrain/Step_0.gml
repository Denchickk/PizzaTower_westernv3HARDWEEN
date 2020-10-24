with instance_place(x-1,y,obj_player) 
if state = states.mort &&  other.eaten = false
{
 other.eaten = true
 other.x = -100
 other.y = -100
  other.sprite_index = spr_corneaten
grav = 0.5
state = states.normal
}

with instance_place(x+1,y,obj_player) 
if state = states.mort &&  other.eaten = false
{
 other.eaten = true
 other.x = -100
 other.y = -100
  other.sprite_index = spr_corneaten
grav = 0.5
state = states.normal
}


if instance_exists(obj_mort) && eaten = true
{
	x = xstart
	y = ystart
eaten = false
sprite_index = spr_corn
}