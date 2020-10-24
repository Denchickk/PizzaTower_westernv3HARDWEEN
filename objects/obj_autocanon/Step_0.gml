if cooldown = 0 && !instance_exists(ID)
with instance_create(x,y,obj_canongoblinbomb)
{
	other.ID = id
	image_xscale = other.image_xscale
}