//Move Up and down
if !instance_exists(obj_keyconfig)
{
if (-obj_player.key_left2 or keyboard_check_pressed(vk_left)) && optionselected > 0 
{
optionselected -= 1
scr_soundeffect(sfx_step)
}
if (obj_player.key_right2 or keyboard_check_pressed(vk_right)) && optionselected < 1
{
optionselected += 1
scr_soundeffect(sfx_step)
}
}
//Full Screen
if optionselected = 1  && (obj_player.key_jump or keyboard_check_pressed(vk_enter))
{


	file_delete("saveData.ini")
	scr_initinput()
	scr_soundeffect(sfx_breakblock1)

ini_open("saveData.ini")


// SAGE2019 achievements
if !ini_section_exists("SAGE2019")
{
ini_write_string("SAGE2019","shotgunsnick",false);


ini_write_string("SAGE2019","dungeonbackup",false);
ini_write_string("SAGE2019","srank",false);
ini_write_string("SAGE2019","snicksrank",false);
ini_write_string("SAGE2019","combo10",false);
ini_write_string("SAGE2019","secret",false);

ini_write_string("SAGE2019","knight",false);

 
ini_write_string("SAGE2019","toppin",false);
ini_write_string("SAGE2019","treasure",false);


ini_close()
}

global.SAGEshotgunsnick = false
global.SAGEshotgunsnicknumber = 0

global.SAGEdungeonbackup = false
global.SAGEsrank = false
global.SAGEsnicksrank = false
global.SAGEcombo10 = false
global.SAGEsecret = false

global.SAGEknight = false
global.SAGEknighttaken = false
 
global.SAGEtoppin = false
global.SAGEtreasure = false


with obj_SAGE2019achievementmarker
{
	snickshotgun = false
dungeonbackup = false
srank = false
snicksrank = false
combo10 = false
secret = false
knight = false
toppin = false
treasure = false
}

obj_mainmenuselect.selected = false
instance_destroy()
}

//Finish
if (obj_player.key_slap2  or keyboard_check_pressed(vk_escape)) or (optionselected = 0  && (obj_player.key_jump or keyboard_check_pressed(vk_enter))) 
{
	scr_soundeffect(sfx_enemyprojectile)
obj_mainmenuselect.selected = false
instance_destroy()
}