



if !audio_is_playing(mu_pizzatime) && !audio_is_playing(mu_noiseescape) && string_letters(roomname) != "dragonlair" && global.panic = true  && obj_pause.pause = 0  && obj_camera.ded = false
   {
	        audio_stop_all()
			if obj_player1.character = "P"
			{
   scr_sound(mu_pizzatime)
   pausedmusic = mu_pizzatime
			}
			else
			{
				   scr_sound(mu_noiseescape)
   pausedmusic = mu_noiseescape
			}

   }
   
   //Stop miniboss music
   if global.miniboss = false && audio_is_playing(mu_miniboss)
   audio_stop_sound(mu_miniboss)
   
   //SAGE2019
   
if !audio_is_playing(mu_snickchallenge) && global.snickchallenge = true && obj_pause.pause = 0 && global.minutes >= 2 && obj_camera.ded = false
   {
	        audio_stop_all()
   scr_sound(mu_snickchallenge)
pausedmusic = mu_snickchallenge
   }
   else if !audio_is_playing(mu_snickchallengeend) && global.snickchallenge = true && obj_pause.pause = 0 && global.minutes < 2 && obj_camera.ded = false
   {
	        audio_stop_all()
   scr_sound(mu_snickchallengeend)
pausedmusic = mu_snickchallenge
   }
   
  if room != hub_room1
fadeoff = audio_sound_get_track_position(global.music)
else
fadeoff = 0

//Christmas

			if room = strongcold_miniboss && global.miniboss =true
			{

			   if !audio_is_playing(mu_miniboss)
			   {
				       audio_stop_all()
			   scr_sound(mu_miniboss)
			   scr_soundeffect(sfx_scream5)
			   pausedmusic = mu_miniboss
			   }

			}
			else
						if room = strongcold_endscreen
			{

	
			   if !audio_is_playing(mu_entrance)
			   {
				       audio_stop_all()
			   scr_sound(mu_entrance)
			   
			   pausedmusic = mu_entrance
			   }
	
			}
