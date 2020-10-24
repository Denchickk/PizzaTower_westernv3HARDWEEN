

if fadealpha > 1 && fadein = false
{


if obj_pause.pause = 1
{
	
obj_pause.pause = 0
instance_activate_all();
audio_resume_sound(obj_music.pausedmusic)
}
else if obj_pause.pause = 0
{
	audio_pause_all()
obj_pause.pause = 1
instance_deactivate_all(true);
instance_activate_object(obj_pause)

}

fadein = true
}

if fadein = false
fadealpha += 0.1
else if fadein = true
fadealpha -= 0.1




if fadein = true && fadealpha < 0 
instance_destroy()



