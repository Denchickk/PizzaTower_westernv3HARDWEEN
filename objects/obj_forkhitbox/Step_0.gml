
if !instance_exists(ID) && room != custom_lvl_room
instance_destroy()



if instance_exists(ID)
{
x = ID.x
y = ID.y
image_xscale = ID.image_xscale
image_index = ID.image_index




with (ID)
{
if object_index = obj_coolpineapple or object_index = obj_forknight or object_index = obj_indiancheese or object_index = obj_noisey
{
if state != states.walk 
{
hitboxcreate = false
instance_destroy(other)
}
}

if object_index = obj_weeniesquire
{

if stun = true
{
	hitboxcreate = false
instance_destroy(other)
}
}



if object_index = obj_boulder
{
if hitwall = false
instance_destroy(other)
}

//SAGE2019
if object_index = obj_snickexe
{
	if obj_player1.instakillmove = true or obj_player1.state = states.handstandjump
	{
instance_destroy(other)
hitboxcreate = false
	}
}

if object_index = obj_pickle
{
if state != states.pizzagoblinthrow
instance_destroy(other)
}


if object_index = obj_noisecrusher
{
if state != states.bounce
{
hitboxcreate = false
instance_destroy(other)
}
}


if object_index = obj_peasanto or object_index = obj_fencer or object_index = obj_ninja  or object_index = obj_pizzice or object_index = obj_ancho
{
if state != states.charge
{
hitboxcreate = false
instance_destroy(other)
}
}


}
}

