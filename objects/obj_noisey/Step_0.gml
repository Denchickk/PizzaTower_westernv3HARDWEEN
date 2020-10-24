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

if  state = states.stun && stunned > 100 && birdcreated = false
{
birdcreated = true
with instance_create(x,y, obj_enemybird)
ID = other.id
}

if state != states.stun
birdcreated = false

if global.miniboss = false
instance_destroy()

//Scared
if ((obj_player1.x > x - 400) && (obj_player1.x < x + 400)) && (y <= obj_player1.y+60 && y >= obj_player1.y- 60)
{
if state != states.idle && obj_player1.state = states.mach3
{
	state = states.idle
	sprite_index = scaredspr
	if x != obj_player1.x
	image_xscale = -sign(x - obj_player1.x)
	
}
}

if instance_exists(obj_player2)
{
if ((obj_player2.x > x - 400) && (obj_player2.x < x + 400)) && (y <= obj_player2.y+60 && y >= obj_player2.y- 60)
{
if state != states.idle && obj_player2.state = states.mach3
{
	state = states.idle
	sprite_index = scaredspr
	if x != obj_player2.x
	image_xscale = -sign(x - obj_player2.x)
	
}
}
}



//Flash
if (flash == true && alarm[2] <= 0) {
   alarm[2] = 0.15 * room_speed; // Flashes for 0.8 seconds before turning back to normal
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


