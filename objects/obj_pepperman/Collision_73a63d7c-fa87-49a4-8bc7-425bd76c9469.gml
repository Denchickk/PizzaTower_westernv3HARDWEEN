if other.drop = false
{
	instance_create(x,y,obj_key)
	dead = true
	sprite_index = spr_pepperman_hurt
	hsp = spd
other.drop = true
}
