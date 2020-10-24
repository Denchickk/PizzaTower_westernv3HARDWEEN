with (obj_player1)
{
if room = rank_room && global.coop = false
{
obj_player1.x = 960/2
obj_player1.y = 540/2
}
}

if instance_exists(obj_player2) && global.coop = true
if room = rank_room
{
	obj_player1.x = 960/2 - 100
obj_player1.y = 540/2
obj_player2.x = 960/2 + 100
obj_player2.y = 540/2
}

obj_camera.visible = false

if fadealpha > 1
{

fadein = true
if room != rank_room
room = rank_room

}

if fadein = false
fadealpha += 0.1
else if fadein = true
fadealpha -= 0.1






