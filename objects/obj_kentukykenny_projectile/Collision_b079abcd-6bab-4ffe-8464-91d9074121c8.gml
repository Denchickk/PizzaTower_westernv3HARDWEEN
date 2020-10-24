with (other)
{
		 if character = "V"
scr_hurtplayer(object_index)
else
	 {
if scr_transformationcheck()
if state!= states.firemouth && hurted = false
{
hsp = 0
movespeed = 0
state = states.firemouth
	hurted = true
image_index = 0
sprite_index = spr_player_firemouthintro
state = states.firemouth
bombpeptimer = 3
	instance_destroy(other)
}
	 }
}
