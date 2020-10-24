
targetDoor = "A"


if place_meeting(x,y,obj_player) && drawing = false
{
ini_open("saveData.ini");
drawing = true
}

if !place_meeting(x,y,obj_player) && drawing = true
{
ini_close(); 
drawing = false
}

if place_meeting(x,y, obj_player1)
image_speed = 0.35
else
{
image_speed=  0
image_index = 0
}


		if distance_to_object( obj_player ) <  50
	{
		
		switch (level)
		{
case "medieval":
with obj_tv
{
	message = "PIZZASCAPE"
	showtext = true
	alarm[0] = 2
}
	break
	

	case "chateau":

with obj_tv
{
	message = "PIZZASCARE"
	showtext = true
	alarm[0] = 2
}
	break
//var fadeRange2 = 256;
//var fadeThresh2 = 64;
//var playerDis2 = distance_to_object( obj_player );

//bgalpha2 = ( fadeThresh2 + fadeRange2 - playerDis2 ) / fadeRange2;


//Background Fade
//var lay_id2 = layer_get_id("Backgrounds_3");
//var back_id2 = layer_background_get_id(lay_id2);
//layer_background_alpha(back_id2, bgalpha2);


case "ruin":

with obj_tv
{
	message = "THE ANCIENT CHEESE"
	showtext = true
	alarm[0] = 2
}
break

case "dungeon":

with obj_tv
{
	message = "BLOODSAUCE DUNGEON"
	showtext = true
	alarm[0] = 2

}
break



case "floorroom" :

with obj_tv
{
	message = "OREGANO DESERT"
	showtext = true
	alarm[0] = 2

}
break



case "graveyard" :
with obj_tv
{
	message = "THE WASTEYARD"
	showtext = true
	alarm[0] = 2

}
break

case "farm" :
with obj_tv
{
	message = "FUN FARM"
	showtext = true
	alarm[0] = 2

}
break

case "ufo" :

with obj_tv
{
	message = "SPACE PINBALL"
	showtext = true
	alarm[0] = 2

}
break

case "entrance":


with obj_tv
{
	message = "ENTRANCE"
	showtext = true
	alarm[0] = 2
}
break

case "strongcold":


with obj_tv
{
	message = "STRONGCOLD"
	showtext = true
	alarm[0] = 2

}
break

case "dragonlair":

with obj_tv
{
	message = "DRAGON LAIR"
	showtext = true
	alarm[0] = 2

}
break

// SAGE2019

case "snickchallenge":


	with obj_tv
{
	message = "SNICK CHALLENGE"
	showtext = true
	alarm[0] = 2

}
break
}
}