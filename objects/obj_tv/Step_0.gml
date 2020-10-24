if  room == rank_room or room == timesuproom or room == boss_room1 or room == Realtitlescreen or room == characterselect
	visible = false
	else
	visible = true





//Text
if showtext = true
{
	xi = 500 + random_range(1,-1)
	if yi > 500
	{
		yi -= 5
	}
}

if showtext = false
{
	xi = 500 + random_range(1,-1)
	if yi < 600
		yi += 1
}



if !(obj_player.state = states.knightpep && obj_player.state = states.knightpepattack && obj_player.state = states.knightpepslopes)
once = false

// More logic

if obj_player.y < 200 && obj_player.x > room_width - 200
alpha = 0.5
else if !( room == rank_room or room == timesuproom or room == boss_room1 or room == Realtitlescreen or room == characterselect)
alpha = 1

//TV




//Rank milestone
if instance_exists(obj_itspizzatime)
{
		image_speed = 0.25
message = "GET TO THE EXIT!!"
alarm[0] = 200
showtext = true
tvsprite = spr_tvexit
}


else if global.collect > global.arank && shownranka = false && obj_player.character = "P"
{
	image_speed = 0
	message = "YOU GOT ENOUGH FOR RANK A"
	showtext = true
	alarm[0] = 200
	tvsprite = spr_tvranka
	shownranka = true
}
else if global.collect > global.brank && shownrankb = false && obj_player.character = "P"
{
	image_speed = 0
	message = "YOU GOT ENOUGH FOR RANK B"
	showtext = true
	alarm[0] = 200
	tvsprite = spr_tvrankb
	shownrankb = true
}
else if global.collect > global.crank && shownrankc = false && obj_player.character = "P"
{
	image_speed = 0
	message = "YOU GOT ENOUGH FOR RANK C"
	showtext = true
	alarm[0] = 200
	tvsprite = spr_tvrankc
	shownrankc = true
}
else
 //Clap
if obj_player.sprite_index = spr_player_levelcomplete
{
	image_speed = 0.1
	alarm[0] = 50
	chose = true
	tvsprite = spr_tvclap
	once = true
}
else


 //Hurt
if obj_player.state = states.hurt 
{
	image_speed = 0.1
	showtext = true
	if chose = false
		message = choose("OW!", "OUCH!", "OH!", "WOH!")
	alarm[0] = 50
	chose = true
	tvsprite = spr_tvhurt
	once = true
}
else //Times Up
if obj_player.state = states.timesup or obj_player.state = states.ejected
{
	alarm[0] = 50
	image_speed = 0.1
	tvsprite = spr_tvskull
}


//Noise miniboss
else 
if global.miniboss = true
{
	alarm[0] = 50
	image_speed = 0.1
	tvsprite = spr_tvnoise
}


else //Hurt message
if global.hurtcounter >= global.hurtmilestone  && obj_player.character = "P"
{
	alarm[0] = 150
	image_speed = 0.1
	if obj_player.character = "P"
		character = "PEPPINO"
	else
		character = "THE NOISE"
		message = "YOU HAVE HURT " + string(character) + " " + string(global.hurtmilestone) + " TIMES..."
	if tvsprite != spr_tvtalking1 && tvsprite != spr_tvtalking2 && tvsprite != spr_tvtalking3 && tvsprite != spr_tvtalking4
		tvsprite = choose(spr_tvtalking1,spr_tvtalking2,spr_tvtalking3,spr_tvtalking4)
	global.hurtmilestone += 3
}
else //Skateboard
if obj_player.state = states.skateboard 
{
	showtext = true
	message = "SWEET DUDE!!"
	alarm[0] = 50
	tvsprite = spr_tvrad
	once = true
}

else //Combo
if global.combo != 0 && global.combotime != 0 && (tvsprite = spr_tvdefault or tvsprite = spr_tvcombo or tvsprite = spr_tvescape)
{
	tvsprite = spr_tvcombo
	image_speed = 0
	if global.combo >= 4 {
		imageindexstore = 3
	}
	else {
		imageindexstore = global.combo -1;
	}
}


else //Good job combo
if global.combotime = 0 && tvsprite = spr_tvcombo
{
	tvsprite = spr_tvcomboresult
	image_index = imageindexstore;
	alarm[0] = 50
}
else //Main Menu
if room = Realtitlescreen 
{
	image_speed = 0.1
	tvsprite = spr_tvbanana
	alarm[0] = 2
	if obj_mainmenuselect.selected = false
	{
	if obj_mainmenuselect.optionselected = 0
	{
	showtext = true
message = "START GAME"
	}
		if obj_mainmenuselect.optionselected = 1
	{
	showtext = true
message = "OPTION"
	}
		if obj_mainmenuselect.optionselected = 2
	{
	showtext = true
message = "ERASE DATA"
	}
	}
	else
		{
	showtext = true
message = ""
	}
	
}

if obj_player.state = states.keyget
{
showtext = true
message = "GOT THE KEY!"
alarm[0] = 50
}
if instance_exists(obj_noise_pushbutton)
{
if obj_noise_pushbutton.hsp != 0 && global.panic = false
{
showtext = true
message = "UH OH..."
alarm[0] = 50
}
}