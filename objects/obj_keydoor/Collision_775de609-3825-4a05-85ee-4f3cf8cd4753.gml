if !place_meeting(x,y,obj_doorblocked)
with (other)
{
if key_up && other.sprite_index = spr_doorvisited && grounded && (state = states.normal or state = states.mach1 or state = states.mach2 or state == states.pogo or state = states.mach3 or state = states.Sjumpprep) 
&& y = other.y + 50 && !instance_exists(obj_noisesatellite) && !instance_exists(obj_fadeout) && state != states.door && state != states.comingoutdoor
&& ((obj_player1.spotlight = true && object_index = obj_player1) or (obj_player1.spotlight = false && object_index = obj_player2))
	{

	obj_player1.lastroom = room

	obj_player2.lastroom = room
	
scr_soundeffect(sfx_door)

obj_camera.chargecamera = 0
ds_list_add(global.saveroom, id) 


if object_index = obj_player1
obj_player1.sprite_index = obj_player1.spr_lookdoor

if object_index = obj_player2
obj_player2.sprite_index = obj_player2.spr_lookdoor

obj_player1.targetDoor = other.targetDoor
obj_player1. targetRoom = other.targetRoom
obj_player2.targetDoor = other.targetDoor
obj_player2. targetRoom = other.targetRoom
obj_player.image_index = 0		
obj_player.state = states.door		
obj_player.mach2 = 0
				if instance_exists(obj_player2) && global.coop = true
		{
			
			
			if object_index = obj_player2 
			{
			
			obj_player1.x = obj_player2.x
			obj_player1.y = obj_player2.y
			}
			if object_index = obj_player1 
			{
				
			obj_player2.x = obj_player1.x
			obj_player2.y = obj_player1.y
			}
			

		}
		
other.visited = true


instance_create(x,y,obj_fadeout)
}

}