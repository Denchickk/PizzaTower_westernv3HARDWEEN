
//Begin cutscene
if image_index = 1 && global.panic = false
with obj_player
if state = states.comingoutdoor && floor(image_index) = image_number - 2
{
	scr_soundeffect(sfx_groundpound)
	with obj_player1
	{
	sprite_index  = spr_Timesup
	image_index = 0
	            with (obj_camera) {

    shake_mag=10;
    shake_mag_acc=30/room_speed;
				}
	}
	if global.coop = true
	{
			with obj_player2
		{
			sprite_index  = spr_Timesup
	image_index = 0
	            with (obj_camera) {

    shake_mag=10;
    shake_mag_acc=30/room_speed;
				}
	}
	}
	

other.image_index = 0
ds_list_add(global.saveroom, other.id) 
}

with (obj_player)
{
if grounded && (x > other.x - 160 && x < other.x + 160) && key_up && (state = states.normal or state = states.mach1 or state = states.mach2 or state = states.mach3) && (global.panic = true or global.snickchallenge = true)
{

if global.timeattack = true
obj_timeattack.stop = true


targetDoor = "none"


obj_camera.alarm[2] = -1

if (global.collect + global.collectN) >= global.srank
{
	global.rank = "s"
	
	// SAGE2019
	
	if global.snickchallenge = true
	global.SAGEsnicksrank = true
}
else if (global.collect + global.collectN) > global.arank
{
	global.rank = "a"
}
else if (global.collect + global.collectN) > global.brank
{
	global.rank = "b"
}
else if (global.collect + global.collectN) > global.crank
{
	global.rank = "c"
}
else 
{
	global.rank = "d"
}


if global.rank = "s"
scr_soundeffect(mu_ranks)
if global.rank = "a"
scr_soundeffect(mu_ranka)
if global.rank = "b"
scr_soundeffect(mu_rankc)
if global.rank = "c"
scr_soundeffect(mu_rankc)
if global.rank = "d"
scr_soundeffect(mu_rankd)



//SAGE2019
audio_stop_sound(mu_pizzatime)
audio_stop_sound(mu_noiseescape)
audio_stop_sound(mu_dragonlair)
audio_stop_sound(mu_snickchallenge)
audio_stop_sound(mu_snickchallengeend)

//Level rank saves

ini_open("saveData.ini");

var roomname = room_get_name(room)
var namestring =  string_letters(roomname)


ini_open("saveData.ini");

if ini_read_real("Highscore", namestring, 0) < global.collect
ini_write_real("Highscore",namestring,global.collect);

if ini_read_real("Treasure", namestring, 0) = 0
ini_write_real("Treasure",namestring,global.treasure);

if ini_read_real("Secret", namestring, 0) < global.secretfound
ini_write_string("Secret",namestring,global.secretfound);

if ini_read_real("Toppin", namestring +"1", false) = 0
ini_write_real("Toppin",namestring + "1" ,global.shroomfollow);
if ini_read_real("Toppin", namestring +"2", false) = 0
ini_write_real("Toppin",namestring + "2",global.cheesefollow );
if ini_read_real("Toppin", namestring +"3", false) = 0
ini_write_real("Toppin",namestring + "3",global.tomatofollow);
if ini_read_real("Toppin", namestring +"4", false) = 0
ini_write_real("Toppin",namestring + "4",global.sausagefollow);
if ini_read_real("Toppin", namestring +"5", false) = 0
ini_write_real("Toppin",namestring + "5",global.pineapplefollow);



if global.rank = "s"
ini_write_string("Ranks",namestring,global.rank)
if global.rank = "a" &&  "s"  !=  ini_read_string("Ranks",namestring,"none")
ini_write_string("Ranks",namestring,global.rank)
if global.rank = "b" && "s"  !=  ini_read_string("Ranks",namestring,"none") && "a"  !=  ini_read_string("Ranks",namestring,"none")
ini_write_string("Ranks",namestring,global.rank)
if global.rank = "c" && "s"  !=  ini_read_string("Ranks",namestring,"none") && "a"  !=  ini_read_string("Ranks",namestring,"none") && "b"  !=  ini_read_string("Ranks",namestring,"none") 
ini_write_string("Ranks",namestring,global.rank)
if global.rank = "d" && "s"  !=  ini_read_string("Ranks",namestring,"none") && "a"  !=  ini_read_string("Ranks",namestring,"none") && "b"  !=  ini_read_string("Ranks",namestring,"none") && "c"  !=  ini_read_string("Ranks",namestring,"none") 
ini_write_string("Ranks",namestring,global.rank)




ini_close(); 


if !instance_exists(obj_endlevelfade)
{
instance_create(x,y,obj_endlevelfade)
}

obj_player1.state = states.door
obj_player1.sprite_index=  obj_player1.spr_lookdoor
if instance_exists(obj_player2)
{
obj_player2.state = states.door
obj_player2.sprite_index=  obj_player2.spr_lookdoor
}
obj_endlevelfade.alarm[0] = 235
image_index = 0
global.panic = false
global.snickchallenge = false





}
}


