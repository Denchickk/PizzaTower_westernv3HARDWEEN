if sprite_index = spr_pepperman_charge
x += spd - 0.5


if sprite_index = spr_pepperman_charge && obj_player.movespeed > 5
{
spd = floor(obj_player.movespeed)
}
else 
spd = 5


//Make player scream

if obj_player.state != states.comingoutdoor && screamintro = false
{
with obj_player
{
	xscale = -1
image_index = 0	
	state =states.backbreaker
	sprite_index = spr_player_bossintro
}
screamintro =true
}

//Start Chase
if obj_player.state != states.backbreaker && screamintro = true && sprite_index != spr_pepperman_charge && dead = false
{
	instance_create(x,y,obj_peppermancharge)
sprite_index = spr_pepperman_charge
}

if dead = true
{
	if (vsp < 12) vsp += grav;
image_speed = 0

x += hsp;
y += floor(vsp);
}