if (obj_player1.character = "P" && obj_player1.spotlight = true) or (obj_player2.character = "P" && obj_player1.spotlight = false)
sprite_index = choose(spr_pizzacollect1, spr_pizzacollect2, spr_pizzacollect3)
if  (obj_player1.character = "N" && obj_player1.spotlight = true) or (obj_player2.character = "N" && obj_player1.spotlight = false)
sprite_index = choose(spr_pizzacollect1halloween, spr_pizzacollect2halloween, spr_pizzacollect3halloween)

image_speed = 0.35

if obj_player.character = "S"
sprite_index = spr_snickcollectible2

depth = 104
roomname = obj_null
image_angle = 0