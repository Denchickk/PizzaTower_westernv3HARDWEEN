image_speed = 0.35
with (playerid)
{
	//SAGE2019
if (!place_meeting(x,y,obj_snick) && !place_meeting(x,y,obj_dresser) && !place_meeting(x,y,obj_door) && !place_meeting(x,y,obj_keydoor)&& !place_meeting(x,y,obj_exitgate)) or !grounded
or state != states.normal
instance_destroy(other)
}
x = playerid.x
y = playerid.y - 50

