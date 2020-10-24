if instance_exists(obj_endlevelfade)
instance_destroy(obj_endlevelfade)
global.timeractive = false
global.wave = 0
global.maxwave = 0
global.secretfound = 0
global.hurtcounter = 0
global.snickchallenge = false
global.timeattack = false
global.giantkey = false
if instance_exists(obj_snickexe)
instance_destroy(obj_snickexe)

obj_timeattack.stop = false

if instance_exists(obj_pizzaface)
instance_destroy(obj_pizzaface)

if instance_exists(obj_pizzashield)
instance_destroy(obj_pizzashield)
global.timedgate = false
global.taseconds = 0
global.taminutes = 0

obj_player1.spotlight = true
obj_player2.x = -1000
obj_player2.y = 500
if instance_exists(obj_coopflag)
instance_destroy(obj_coopflag)
if instance_exists(obj_cooppointer)
instance_destroy(obj_cooppointer)

if instance_exists(obj_toppinwarrior)
instance_destroy(obj_toppinwarrior)

with obj_tv
{
	shownranka = false
	shownrankb = false
	shownrankc = false
	
}

// SAGE2019
global.SAGEshotgunsnicknumber = 0
obj_music.fadeoff = 0
audio_stop_all()


if instance_exists(obj_timesup)
instance_destroy(obj_timesup)
global.seconds = 59
global.minutes = 1
obj_player1.state = states.comingoutdoor
obj_player2.state = states.comingoutdoor
obj_player1.visible = true
obj_player2.visible = true


ds_list_clear(global.saveroom)
ds_list_clear(global.baddieroom)
with (obj_player1) 
{
	image_blend = make_colour_hsv(0,0,255);
	supercharged = false
	pizzapepper = 0
	pizzashield = false
	c = 0
	heavy = false
	image_index = 0
sprite_index = spr_walkfront
alarm[0] = -1
alarm[1] = -1
alarm[3] = -1
alarm[4] = -1
alarm[5] = -1
alarm[6] = -1
alarm[7] = -1
alarm[8] = -1
alarm[9] = -1
alarm[10] = -1
grav = 0.5;
hsp = 0;
vsp = 0;
global.playerhealth = 100
xscale = 1;
yscale = 1;



pogospeed = 6
pogochargeactive = false
pogocharge = 100

x = backtohubstartx
y = backtohubstarty

backupweapon = false
shotgunAnim = false

box = false
steppy = false

movespeedmax = 5
jumpstop = false
start_running = true

obj_camera.ded = false

visible = true
global.panic = false
turn = false
jumpAnim = true
dashAnim = true
landAnim = false
machslideAnim = false
moveAnim = true
stopAnim = true
crouchslideAnim = true
crouchAnim = true
machhitAnim = false
stompAnim = false

inv_frames = false

turning = false

hurtbounce = 0
hurted = false
autodash = false
mach2 = 0

input_buffer_jump = 8
input_buffer_secondjump = 8
input_buffer_highjump = 8

flash = false
global.key_inv = false
global.shroomfollow = false
global.cheesefollow = false
global.tomatofollow = false
global.sausagefollow = false
global.pineapplefollow = false
global.keyget = false
global.collect = 0
global.collectN = 0
global.ammo = 0
global.treasure = false
global.combo = 0
global.combotime = 0
global.pizzacoin = 0
global.toppintotal = 1
global.hit = 0


ini_open("saveData.ini");
// SAGE2019 achievements
global.SAGEshotgunsnick = ini_read_string("SAGE2019","shotgunsnick",false);
global.SAGEshotgunsnicknumber = 0

global.SAGEdungeonbackup = ini_read_string("SAGE2019","dungeonbackup",false);
global.SAGEsrank = ini_read_string("SAGE2019","srank",false);
global.SAGEsnicksrank = ini_read_string("SAGE2019","snicksrank",false);
global.SAGEcombo10 = ini_read_string("SAGE2019","combo10",false);
global.SAGEsecret = ini_read_string("SAGE2019","secret",false);

global.SAGEknight = ini_read_string("SAGE2019","knight",false);
global.SAGEknighttaken = false
 
global.SAGEtoppin = ini_read_string("SAGE2019","toppin",false);
global.SAGEtreasure = ini_read_string("SAGE2019","treasure",false);
ini_close()



in_water = false
key_particles = false
barrel = false
bounce = false
a = 0
idle = 0
attacking = false
slamming = false
superslam = 0

machpunchAnim = false
punch = false
machfreefall = 0
shoot = true
instakillmove = false
windingAnim = 0
facestompAnim = false
ladderbuffer = 0
chainsaw = 50
toomuchalarm1 = 0
toomuchalarm2 = 0
dashdust = false
throwforce = 0
hurtsound = false

idleanim = 0
momemtum = false
cutscene = false
grabbing = false
dir = xscale



goingdownslope = false
goingupslope = false
fallinganimation = 0
bombpeptimer = 100
slapbuffer = 0
slaphand= 1

suplexmove = false
suplexhavetomash = 0

timeuntilhpback = 300

anger = 0
angry = false

}

						with (obj_player2) 
						{
							pizzashield = false
							image_blend = make_colour_hsv(0,0,255);
							supercharged = false
							pizzapepper = 0
								c = 0
							heavy = false
								image_index = 0
sprite_index = spr_walkfront
						alarm[0] = -1
						alarm[1] = -1
						alarm[3] = -1
						alarm[4] = -1
						alarm[5] = -1
						alarm[6] = -1
						alarm[7] = -1
						alarm[8] = -1
						alarm[9] = -1
						alarm[10] = -1
						grav = 0.5;
						hsp = 0;
						vsp = 0;
						global.playerhealth = 100
						xscale = 1;
						yscale = 1;

pogospeed = 6
pogochargeactive = false
pogocharge = 100



						x = backtohubstartx
						y = backtohubstarty

						backupweapon = false
						shotgunAnim = false

						box = false
						steppy = false

						movespeedmax = 5
						jumpstop = false
						start_running = true

						obj_camera.ded = false

						visible = true
						global.panic = false
						turn = false
						jumpAnim = true
						dashAnim = true
						landAnim = false
						machslideAnim = false
						moveAnim = true
						stopAnim = true
						crouchslideAnim = true
						crouchAnim = true
						machhitAnim = false
						stompAnim = false

						inv_frames = false

						turning = false

						hurtbounce = 0
						hurted = false
						autodash = false
						mach2 = 0

						input_buffer_jump = 8
						input_buffer_secondjump = 8
						input_buffer_highjump = 8

						flash = false
						global.key_inv = false
						global.shroomfollow = false
						global.cheesefollow = false
						global.tomatofollow = false
						global.sausagefollow = false
						global.pineapplefollow = false
						global.keyget = false
						global.collect = 0
						global.collectN = 0
						global.ammo = 0
						global.treasure = false
						global.combo = 0
						global.combotime = 0
						global.pizzacoin = 0
						global.toppintotal = 1
						global.hit = 0


						ini_open("saveData.ini");
						// SAGE2019 achievements
						global.SAGEshotgunsnick = ini_read_string("SAGE2019","shotgunsnick",false);
						global.SAGEshotgunsnicknumber = 0

						global.SAGEdungeonbackup = ini_read_string("SAGE2019","dungeonbackup",false);
						global.SAGEsrank = ini_read_string("SAGE2019","srank",false);
						global.SAGEsnicksrank = ini_read_string("SAGE2019","snicksrank",false);
						global.SAGEcombo10 = ini_read_string("SAGE2019","combo10",false);
						global.SAGEsecret = ini_read_string("SAGE2019","secret",false);

						global.SAGEknight = ini_read_string("SAGE2019","knight",false);
						global.SAGEknighttaken = false
 
						global.SAGEtoppin = ini_read_string("SAGE2019","toppin",false);
						global.SAGEtreasure = ini_read_string("SAGE2019","treasure",false);
						ini_close()



						in_water = false
						key_particles = false
						barrel = false
						bounce = false
						a = 0
						idle = 0
						attacking = false
						slamming = false
						superslam = 0

						machpunchAnim = false
						punch = false
						machfreefall = 0
						shoot = true
						instakillmove = false
						windingAnim = 0
						facestompAnim = false
						ladderbuffer = 0
						chainsaw = 50
						toomuchalarm1 = 0
						toomuchalarm2 = 0
						dashdust = false
						throwforce = 0
						hurtsound = false

						idleanim = 0
						momemtum = false
						cutscene = false
						grabbing = false
						dir = xscale



						goingdownslope = false
						goingupslope = false
						fallinganimation = 0
						bombpeptimer = 100
						slapbuffer = 0
						slaphand= 1

						suplexmove = false
						suplexhavetomash = 0

						timeuntilhpback = 300

						anger = 0
						angry = false

						}

