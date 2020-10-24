
if sprite_index != spr_mortspawn && sprite_index != spr_mortfall
{
	
	
with (other)
{
	repeat (6) with instance_create(x,y,obj_debris)
	sprite_index = spr_feather
	state = states.mort
	sprite_index = spr_player_mortidle
}
instance_destroy()
}