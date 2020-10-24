var player = instance_nearest(x,y,obj_player)


if state != states.grabbed 
if ((player.x > x - 400) && (player.x < x + 400)) && (y <= player.y+60 && y >= player.y- 60)
{
if state != states.idle && state != states.stun && (player.state = states.mach3 or player.state = states.rideweenie or player.state = states.tacklecharge) 
{
	state = states.idle
	sprite_index = scaredspr
	if x != player.x
	image_xscale = -sign(x - player.x)
	scaredbuffer = 100/(global.stylethreshold + 1)
	if grounded
	vsp = -5
	
}
}