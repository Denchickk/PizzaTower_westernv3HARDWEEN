if room == rm_editor exit;

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






//Sprites

idlespr = spr_pizzagoblin_idle
stunfallspr = spr_pizzagoblin_stun
walkspr =spr_pizzagoblin_walk
stunspr = spr_pizzagoblin_stun
grabbedspr = spr_pizzagoblin_stun


//Scared
scr_scareenemy()





//Flash
if (flash == true && alarm[2] <= 0) {
   alarm[2] = 0.15 * room_speed; // Flashes for 0.8 seconds before turning back to normal
}


if state != states.grabbed
depth = 0


if state != states.stun
thrown= false


if bombreset > 0
bombreset --

//Throw Bomb at
if x != obj_player1.x && obj_player1.state != states.bombpep && state != states.pizzagoblinthrow && bombreset = 0  && grounded
{
if ((obj_player1.x > x - 400) && (obj_player1.x < x + 400)) && (y <= obj_player1.y+400 && y >= obj_player1.y- 400)
{
if (state = states.walk or state = states.idle) 
{

image_index = 0
image_xscale = -sign(x - obj_player1.x)
state = states.pizzagoblinthrow
}
}
}

if instance_exists(obj_player2)
{
	if x != obj_player2.x && obj_player2.state != states.bombpep && state != states.pizzagoblinthrow && bombreset = 0  && grounded
{
if ((obj_player2.x > x - 400) && (obj_player2.x < x + 400)) && (y <= obj_player2.y+20 && y >= obj_player2.y- 20)
{
if (state = states.walk or state = states.idle) 
{

image_index = 0
image_xscale = -sign(x - obj_player2.x)
state = states.pizzagoblinthrow
}
}
}
}

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