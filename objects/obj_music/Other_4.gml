//SAGE2019
if global.panic = false  && global.snickchallenge = false
{

if instance_exists(obj_pepperman)
{
	       audio_stop_all()
   scr_sound(mu_chase)
}




roomname = room_get_name(room)

if room = characterselect
{

	
   if !audio_is_playing(mu_characterselect)
   {
	       audio_stop_all()
   scr_sound(mu_characterselect)
   pausedmusic = mu_characterselect
   }
}




if string_letters(roomname) = "Realtitlescreen" or string_letters(roomname) = "Realtitlescreen"
{

	
   if !audio_is_playing(mu_title)
   {
	       audio_stop_all()
   scr_sound(mu_title)
   pausedmusic = mu_title
   }
}


if string_letters(roomname) = "hubroom" or string_letters(roomname) = "Titlescreen" or string_letters(roomname) = "halloweenentrance"
{

	
   if !audio_is_playing(mu_hub)
   {
	       audio_stop_all()
   scr_sound(mu_hub)
   pausedmusic = mu_hub
   }
}


if string_letters(roomname) = "PProom" or string_letters(roomname) = "PProom"
{

	
   if !audio_is_playing(mu_tutorial)
   {
	       audio_stop_all()
   scr_sound(mu_tutorial)
   pausedmusic = mu_tutorial
   }
}


if string_letters(roomname) = "entrance" 
{
	if obj_player1.character = "P"
	{
			   if !audio_is_playing(mu_entrance)
			   {
				       audio_stop_all()
			   scr_sound(mu_entrance)
			   audio_sound_set_track_position(global.music, fadeoff)
			   pausedmusic = mu_entrance
			   }
	}
	else 
				   if !audio_is_playing(mu_noiseentrance)
			   {
				       audio_stop_all()
			   scr_sound(mu_noiseentrance)
			   audio_sound_set_track_position(global.music, fadeoff)
			   pausedmusic = mu_noiseentrance
			   }
	
}

if string_letters(roomname) = "dungeon"
{
	for (i = 0; i < 20; ++i)
	{
			if roomname = "dungeon_" + string(i) && i <= 8
			{

	
			   if !audio_is_playing(mu_dungeon)
			   {
				       audio_stop_all()
			   scr_sound(mu_dungeon)
			   audio_sound_set_track_position(global.music, fadeoff)
			   pausedmusic = mu_dungeon
			   }
	
			}
			else
				if roomname = "dungeon_" + string(i) && i > 8
			{

			   if !audio_is_playing(mu_dungeondepth)
			   {
				       audio_stop_all()
			   scr_sound(mu_dungeondepth)
			   audio_sound_set_track_position(global.music, fadeoff)
			   pausedmusic = mu_dungeondepth
			   }

			}


		}
}

if string_letters(roomname) = "strongcold"
{
	for (i = 0; i < 20; ++i)
	{
			if roomname = "strongcold_" + string(i) && i <= 8 && i > 1
			{

	
			   if !audio_is_playing(mu_strongcold)
			   {
				       audio_stop_all()
			   scr_sound(mu_strongcold)
			   audio_sound_set_track_position(global.music, fadeoff)
			   pausedmusic = mu_strongcold
			   }
	
			}

			else
				if roomname = "strongcold_" + string(i) && i > 8
			{

			   if !audio_is_playing(mu_dungeondepth)
			   {
				       audio_stop_all()
			   scr_sound(mu_dungeondepth)
			   audio_sound_set_track_position(global.music, fadeoff)
			   pausedmusic = mu_dungeondepth
			   }

			}
			else 				
			if roomname = "strongcold_1"
			{

			   if !audio_is_playing(mu_chateau)
			   {
				       audio_stop_all()
			   scr_sound(mu_chateau)
			   audio_sound_set_track_position(global.music, fadeoff)
			   pausedmusic = mu_chateau
			   }

			}
									



		}
}






if string_letters(roomname) = "medieval" 
{
	
	for (i = 0; i < 20; ++i)
	{
			if roomname = "medieval_" + string(i) && i <= 2
			{

	
			   if !audio_is_playing(mu_medievalentrance)
			   {
				       audio_stop_all()
			   scr_sound(mu_medievalentrance)
			   audio_sound_set_track_position(global.music, fadeoff)
			   pausedmusic = mu_medievalentrance
			   }
	
			}
			else
				if roomname = "medieval_" + string(i) && i > 2 && i <= 5
			{

			   if !audio_is_playing(mu_medievalremix)
			   {
				       audio_stop_all()
			   scr_sound(mu_medievalremix)
			   audio_sound_set_track_position(global.music, fadeoff)
			   pausedmusic = mu_medievalremix
			   }

			}
				else
				if roomname = "medieval_" + string(i) && i > 5
			{

	
			   if !audio_is_playing(mu_medieval)
			   {
				       audio_stop_all()
			   scr_sound(mu_medieval)
			   audio_sound_set_track_position(global.music, fadeoff)
			   pausedmusic = mu_medieval
			   }

			}
	}
}

if string_letters(roomname) = "ruin" 
{
	
	for (i = 0; i < 20; ++i)
	{
			if roomname = "ruin_" + string(i) && i <= 6
			{

	
			   if !audio_is_playing(mu_ruin)
			   {
				       audio_stop_all()
			   scr_sound(mu_ruin)
			   audio_sound_set_track_position(global.music, fadeoff)
			   pausedmusic = mu_ruin
			   }
	
			}
			else
				if roomname = "ruin_" + string(i) && i > 6
			{

			   if !audio_is_playing(mu_ruinremix)
			   {
				       audio_stop_all()
			   scr_sound(mu_ruinremix)
			   audio_sound_set_track_position(global.music, fadeoff)
			   pausedmusic = mu_ruinremix
			   }

			}


		}
	}

if string_letters(roomname) = "chateau" 
{
	

	
   if !audio_is_playing(mu_chateau)
   {
	       audio_stop_all()
   scr_sound(mu_chateau)
   audio_sound_set_track_position(global.music, fadeoff)
   pausedmusic = mu_chateau
   }
}


if string_letters(roomname) = "farm" 
{
	

	
   if !audio_is_playing(mu_farm)
   {
	       audio_stop_all()
   scr_sound(mu_farm)
   audio_sound_set_track_position(global.music, fadeoff)
   pausedmusic = mu_farm
   }
}


if string_letters(roomname) = "graveyard" 
{
	

	
   if !audio_is_playing(mu_graveyard)
   {
	       audio_stop_all()
   scr_sound(mu_graveyard)
   audio_sound_set_track_position(global.music, fadeoff)
   pausedmusic = mu_graveyard
   }
}


if string_letters(roomname) = "ufo" 
{
	

	
   if !audio_is_playing(mu_pinball)
   {
	       audio_stop_all()
   scr_sound(mu_pinball)
   audio_sound_set_track_position(global.music, fadeoff)
   pausedmusic = mu_pinball
   }
}

if string_letters(roomname) = "entrancesecret" or string_letters(roomname) = "chateausecret" or string_letters(roomname) = "strongcoldsecret" or string_letters(roomname) = "medievalsecret" 
{
	

	
   if !audio_is_playing(mu_medievalsecret)
   {
	       audio_stop_all()
   scr_sound(mu_medievalsecret)
   audio_sound_set_track_position(global.music, fadeoff)
   pausedmusic = mu_medievalsecret
   }
}

if string_letters(roomname) = "ruinsecret" 
{
	

	
   if !audio_is_playing(mu_ruinsecret)
   {
	       audio_stop_all()
   scr_sound(mu_ruinsecret)
   audio_sound_set_track_position(global.music, fadeoff)
   pausedmusic = mu_ruinsecret
   }
}



if string_letters(roomname) = "dungeonsecret" 
{
	

	
   if !audio_is_playing(mu_dungeonsecret)
   {
	       audio_stop_all()
   scr_sound(mu_dungeonsecret)
   audio_sound_set_track_position(global.music, fadeoff)
   pausedmusic = mu_dungeonsecret
   }
}





if string_letters(roomname) = "dragonlair" 
{
	

	
   if !audio_is_playing(mu_dragonlair)
   {
	       audio_stop_all()
   scr_sound(mu_dragonlair)
   audio_sound_set_track_position(global.music, fadeoff)
   pausedmusic = mu_dragonlair
   }
}




if string_letters(roomname) = "floorroom" 
{
	
	for (i = 0; i < 20; ++i)
	{
			if roomname = "floor1_room" + string(i) && i <= 9
			{

	
			   if !audio_is_playing(mu_desert)
			   {
				       audio_stop_all()
			   scr_sound(mu_desert)
			   audio_sound_set_track_position(global.music, fadeoff)
			   pausedmusic = mu_desert
			   }
	
			}
			else
				if roomname = "floor1_room" + string(i) && i > 9
			{

			   if !audio_is_playing(mu_ufo)
			   {
				       audio_stop_all()
			   scr_sound(mu_ufo)
			   audio_sound_set_track_position(global.music, fadeoff)
			   pausedmusic = mu_ufo
			   }

			}


		}
	}

if string_letters(roomname) = "floorsecret" 
{
	

	
   if !audio_is_playing(mu_desertsecret)
   {
	       audio_stop_all()
   scr_sound(mu_desertsecret)
   audio_sound_set_track_position(global.music, fadeoff)
   pausedmusic = mu_desertsecret
   }
}

if room == custom_lvl_room {
	alarm[0] = 4;
}
	
}
