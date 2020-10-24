
if (!pause) && !instance_exists(obj_fadeout){
    if obj_player1.key_start && (room != rank_room && room != Realtitlescreen && room != timesuproom) {
		selected = 0
		if !instance_exists(obj_pausefadeout)
        instance_create(x,y,obj_pausefadeout)
		
 
    }
}


if instance_exists(obj_pausefadeout) && instance_exists(obj_fadeout)
instance_destroy(obj_pausefadeout)

if pause = 1 {

	    scr_getinput()
	//DDP Always draw normally while paused
	application_surface_draw_enable(true)
	

    if key_down2 && selected < 2 {
        selected += 1
		scr_soundeffect(sfx_step)
    }

    if key_up2 && selected > 0 {
	selected -= 1
	scr_soundeffect(sfx_step)
    }

if key_jump && selected = 1 {





var roomname = room_get_name(room)

if global.snickchallenge = false
{
	
		
if string_letters(roomname) = "entrance" or string_letters(roomname) = "entrancesecret"
{

	instance_activate_all();
room = entrance_1
scr_playerreset()
pause = 0
obj_player1.targetDoor = "A"
if instance_exists(obj_player2)
obj_player2.targetDoor = "A"
}	
	
	
else if string_letters(roomname) = "medieval" or string_letters(roomname) = "medievalsecret"
{

	instance_activate_all();
room = medieval_1
scr_playerreset()
pause = 0
obj_player1.targetDoor = "A"
if instance_exists(obj_player2)
obj_player2.targetDoor = "A"
}	

if string_letters(roomname) = "chateau" or string_letters(roomname) = "chateausecret"
{

	instance_activate_all();
room = chateau_1
scr_playerreset()
pause = 0
obj_player1.targetDoor = "A"
if instance_exists(obj_player2)
obj_player2.targetDoor = "A"
}	

else if string_letters(roomname) = "ruin" or string_letters(roomname) = "ruinsecret"
{

	instance_activate_all();
room = ruin_1
scr_playerreset()
pause = 0
obj_player1.targetDoor = "A"
if instance_exists(obj_player2)
obj_player2.targetDoor = "A"
}	

else if string_letters(roomname) = "dungeon" or string_letters(roomname) = "dungeonsecret"
{

	instance_activate_all();
room = dungeon_1
scr_playerreset()
pause = 0
obj_player1.targetDoor = "A"
if instance_exists(obj_player2)
obj_player2.targetDoor = "A"
}	


else if string_letters(roomname) = "floorroom" or string_letters(roomname) = "floorsecret"
{

	instance_activate_all();
room = floor1_room0
scr_playerreset()
pause = 0
obj_player1.targetDoor = "A"
if instance_exists(obj_player2)
obj_player2.targetDoor = "A"
}	



else if string_letters(roomname) = "graveyard" or string_letters(roomname) = "graveyardsecret"
{

	instance_activate_all();
room = graveyard_1
scr_playerreset()
pause = 0
obj_player1.targetDoor = "A"
if instance_exists(obj_player2)
obj_player2.targetDoor = "A"
}	

else if string_letters(roomname) = "farm" or string_letters(roomname) = "farmsecret"
{

	instance_activate_all();
room = farm_1
scr_playerreset()
pause = 0
obj_player1.targetDoor = "A"
if instance_exists(obj_player2)
obj_player2.targetDoor = "A"
}	

else if string_letters(roomname) = "ufo" or string_letters(roomname) = "ufosecret"
{

	instance_activate_all();
room = ufo_1
scr_playerreset()
pause = 0
obj_player1.targetDoor = "A"
if instance_exists(obj_player2)
obj_player2.targetDoor = "A"
}	

else if string_letters(roomname) = "dragonlair" or string_letters(roomname) = "dragonlairsecret"
{

	instance_activate_all();
room = dragonlair_1
scr_playerreset()
pause = 0
obj_player1.targetDoor = "A"
if instance_exists(obj_player2)
obj_player2.targetDoor = "A"
}	
else if string_letters(roomname) = "strongcold" or string_letters(roomname) = "strongcoldsecret"
{

	instance_activate_all();
room = strongcold_10
scr_playerreset()
pause = 0
obj_player1.targetDoor = "A"
if instance_exists(obj_player2)
obj_player2.targetDoor = "A"
}	
else
scr_soundeffect(sfx_enemyprojectile)
}
else if global.snickchallenge = true{
	instance_activate_all();
	room = medieval_1
scr_playerreset()

global.collect = 10000
global.seconds = 59
global.minutes = 9

		//DDP Set up maximum possible time for background wave shader
global.wave = 0
global.maxwave = (global.minutes * 60 + global.seconds) * 60

// Start up panicbg effects if option is enabled
if global.panicbg {
	scr_panicbg_init()
}

obj_player1.state =states.comingoutdoor
if global.coop =true
obj_player2.state =states.comingoutdoor


obj_player1.targetDoor = "A"
global.snickchallenge = true
pause = 0
}


}

        if key_jump2 && selected = 2 {

			
			if room = hub_room1 or room = cowboytask or room = Titlescreen or room =Scootertransition
			{
			            pause = 0
            instance_activate_all();
            room = Realtitlescreen

with (obj_player1)
{
			character = "P"
			
scr_characterspr()
}
			
			scr_playerreset()

			obj_player1.state = states.titlescreen
			obj_player2.state = states.titlescreen
			global.cowboyhat = false
obj_player1.targetDoor = "A"
if instance_exists(obj_player2)
obj_player2.targetDoor = "A"
global.coop = false

			}
			else
			{
							            pause = 0
            instance_activate_all();
				scr_playerreset()
obj_player.targetDoor = "A"
if instance_exists(obj_player2)
obj_player2.targetDoor = "A"
room = hub_room1
			}
        }

        if key_jump2 && selected = 0 {
            if !instance_exists(obj_pausefadeout)
			instance_create(x,y,obj_pausefadeout)
            
        }
		
		
    }
