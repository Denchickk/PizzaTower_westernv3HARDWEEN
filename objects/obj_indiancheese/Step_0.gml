switch (state)
{
    case states.idle: scr_enemy_idle (); break;
    case states.charge: scr_enemy_charge (); break;
    case states.turn: scr_enemy_turn (); break;
    case states.walk: scr_enemy_walk (); break;
    case states.land: scr_enemy_land (); break;
    case states.hit: scr_enemy_hit (); break;
    case states.stun: scr_enemy_stun (); break;
    case states.pizzagoblinthrow: scr_pizzagoblin_throw (); break;
    case states.grabbed: scr_enemy_grabbed (); break;
}





if  state = states.stun && stunned > 40 && birdcreated = false
{
birdcreated = true
with instance_create(x,y, obj_enemybird)
ID = other.id
}

if state != states.stun
birdcreated = false



//Flash
if (flash == true && alarm[2] <= 0) {
   alarm[2] = 0.15 * room_speed; // Flashes for 0.8 seconds before turning back to normal
}


var player = instance_nearest(x,y,obj_player)


if state = states.walk && sprite_index = walkspr
if ((player.x > x - 400) && (player.x < x + 400)) && (y <= player.y+60 && y >= player.y- 60)
{
		state = states.idle
	sprite_index = scaredspr
	if x != player.x
	image_xscale = -sign(x - player.x)
	scaredbuffer = 100
	jumptimer = 20	
	vsp = -5
}

//Jump
if jumptimer > 0 && state = states.idle && grounded
jumptimer --

if jumptimer = 0 && state = states.idle && grounded
{
	movespeed =4
	vsp = -11
	sprite_index = spr_indiancheese_jump
	image_index = 0
	state = states.walk
jumptimer = 20	
instance_create(x,y,obj_highjumpcloud2)
}

if !grounded && sprite_index = spr_indiancheese_jump && floor(image_index) = image_number -1
{
	image_speed = 0
}
else if image_speed = 0
image_speed = 0.35

if grounded && sprite_index = spr_indiancheese_jump && vsp > 0
{
	movespeed = 1
	instance_create(x,y,obj_landcloud)
sprite_index = spr_indiancheese_walk
}


if  hitboxcreate = false && (state = states.walk)
{
hitboxcreate = true
with instance_create(x,y,obj_forkhitbox)
{
ID = other.id
}
}

if state != states.grabbed
depth = 0



if state != states.stun
thrown= false

if boundbox = false
{
with instance_create(x,y,obj_baddiecollisionbox)
{
sprite_index = other.sprite_index
mask_index = other.sprite_index
baddieID = other.id
other.boundbox = true
}
}


