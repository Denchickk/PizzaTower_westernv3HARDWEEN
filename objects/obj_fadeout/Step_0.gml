if instance_exists(obj_pausefadeout)
instance_destroy(obj_pausefadeout)

if fadealpha > 1
{
	fadein = true
	if instance_exists(obj_player)
	{
		if custom_level == false {
			with (obj_player)
			{
			if place_meeting(x,y,obj_goldendoor)
				game_restart()
			}
			if room != obj_player1.targetRoom
				room_goto(obj_player1.targetRoom)
			if global.coop = true
			{
				if room != obj_player2.targetRoom
				room_goto(obj_player2.targetRoom)
			}
		}
		else {
			with obj_door_editor {
				if index == other.index && !place_meeting(x, y, obj_player) {
					other.xx = x;
					other.yy = y;
					if object_index == obj_keydoor_editor {
						alarm[0] = 1;
					}
				}
			}
			with obj_player {
				x = other.xx + 50;
				y = other.yy + 50;
			}
		}
	}

}

if fadein = false
fadealpha += 0.1
else if fadein = true
fadealpha -= 0.1

if instance_exists(obj_player)
{

with(obj_player1)
{	
if other.fadein = true && (obj_player1.state = states.door or obj_player1.state = states.victory ) && (place_meeting(x,y,obj_door) or place_meeting(x,y,obj_startgate) or place_meeting(x,y,obj_door_editor))
{

state = states.comingoutdoor
image_index = 0
	if global.coop = true
{
	obj_player2.state = states.comingoutdoor
obj_player2.image_index = 0
}
}


if other.fadein = true && obj_player1.state = states.door && (obj_player1.sprite_index =spr_downpizzabox or obj_player1.sprite_index =spr_uppizzabox)
{
state = states.crouchjump
if global.coop = true
obj_player2.state = states.crouchjump
}
}

if instance_exists(obj_player2)
{
with(obj_player2)
{	
if other.fadein = true && (obj_player2.state = states.door or obj_player2.state = states.victory ) && (place_meeting(x,y,obj_door) or place_meeting(x,y,obj_startgate))
{

state = states.comingoutdoor
image_index = 0
if global.coop = true
{
	obj_player1.state = states.comingoutdoor
obj_player1.image_index = 0
}
	
}


if other.fadein = true && obj_player2.state = states.door && (obj_player2.sprite_index =spr_downpizzabox or obj_player2.sprite_index =spr_uppizzabox)
{
state = states.crouchjump
if global.coop = true
obj_player1.state = states.crouchjump
}
}
}

}


if fadein = true && fadealpha < 0 
instance_destroy()



