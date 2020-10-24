//Mach3




with (obj_player)
{

if grounded && (state = states.mach1 or state = states.mach2)
{
xscale = other.image_xscale

mach2 =  100

machhitAnim = false
state = states.mach3
flash = true
sprite_index = spr_player_mach4
instance_create(x,y,obj_jumpdust)
movespeed = 14


}

if grounded && state = states.mach3
{
	flash = true
	if movespeed < 14
movespeed = 14
instance_create(x,y,obj_jumpdust)
}
}

