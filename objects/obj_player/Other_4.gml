
//Delay to appear


if state =states.comingoutdoor && global.coop = true && !place_meeting(x,y,obj_exitgate)
{
if object_index = obj_player1 && obj_player1.spotlight = false
{
	visible = false
}

if object_index = obj_player2 && obj_player1.spotlight = true
{
	visible = false
}

}




if global.coop = true
scr_changetoppings()

if state =states.grab 
state =states.normal


if object_index != obj_player2 or global.coop = true 
{
if targetDoor = "A" && instance_exists(obj_doorA)
 {
	 if hallway = true
	 x = obj_doorA.x + (hallwaydirection * 100)
	 else if box = true
	 x = obj_doorA.x + 32
	 else
x = obj_doorA.x + 16

y = obj_doorA.y - 14

 }
 
 if targetDoor = "B"  && instance_exists(obj_doorB)
 {
	 	 if hallway = true
	 x = obj_doorB.x + (hallwaydirection * 100)
	 	 else if box = true
	 x = obj_doorB.x + 32
	 else
x = obj_doorB.x + 16
y = obj_doorB.y - 14

 }
 
 if targetDoor = "C"  && instance_exists(obj_doorC)
 {
	 	 if hallway = true
	 x = obj_doorC.x + (hallwaydirection * 100)
	 	 else if box = true
	 x = obj_doorC.x + 32
	 else
x = obj_doorC.x + 16
y = obj_doorC.y - 14

 }
 
 if targetDoor = "D" && instance_exists(obj_doorD)
 {
	 	 if hallway = true
	 x = obj_doorD.x + (hallwaydirection * 100)
	 	 else if box = true
	 x = obj_doorD.x + 32
	 else
x = obj_doorD.x + 16
y = obj_doorD.y - 14

 }

 if targetDoor = "E" && instance_exists(obj_doorE)
 {
	 	 if hallway = true
	 x = obj_doorE.x + (hallwaydirection * 100)
	 	 else if box = true
	 x = obj_doorE.x + 32
	 else
x = obj_doorE.x + 16
y = obj_doorE.y - 14

 }
}

hallway = false
box = false

if global.shroomfollow = true
instance_create(x,y,obj_pizzakinshroom)

if global.cheesefollow = true
instance_create(x,y,obj_pizzakincheese)

if global.tomatofollow = true
instance_create(x,y,obj_pizzakintomato)

if global.sausagefollow = true
instance_create(x,y,obj_pizzakinsausage)

if global.pineapplefollow = true
instance_create(x,y,obj_pizzakinpineapple)

 roomstartx  = x
 roomstarty = y
roomname = room_get_name(room)

