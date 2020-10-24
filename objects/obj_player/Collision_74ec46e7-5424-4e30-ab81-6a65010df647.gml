if grounded && other.sprite_index = spr_swordstone && (state = states.handstandjump or state = states.punch)
{
	scr_soundeffect(sfx_knightsword)
global.SAGEknighttaken = true
momentum = false
movespeed = 0
other.image_index =1
image_index = 0
image_speed = 0.35
sprite_index = spr_knightpepstart
state = states.knightpep
hsp = 0
}

