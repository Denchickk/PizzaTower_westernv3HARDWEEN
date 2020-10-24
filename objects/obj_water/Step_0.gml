
with instance_place(x,y+1,obj_player)
if state = states.mach3 or  state = states.climbwall
{
vsp = 0
//Jump
if (input_buffer_jump < 8) && !(move == 1 && xscale == -1) && !(move == -1 && xscale == 1)  
{
scr_soundeffect(sfx_jump)
if sprite_index != spr_fightball
{
image_index =0
sprite_index = spr_mach3jump
}
if character = "P"
vsp = -11
else
vsp = -13
}
}
else if state != states.barrel && vsp > 0
{
state = states.fireass 
vsp = -21
sprite_index =spr_fireass
}