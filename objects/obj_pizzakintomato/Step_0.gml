if room == rm_editor exit;

if room = rank_room or room = timesuproom
visible = false
else
visible = playerid.visible
if obj_player.state = states.pizzathrow
{
visible = false
}




var roomname = string_letters(room_get_name(room))
if roomname = "strongcoldminiboss"
roomname = "strongcold"





switch (roomname)
{
default:

if sprite_index = spr_toppintomato_intro && floor(image_index) = image_number -1
sprite_index = spr_toppintomato

if obj_player1.spotlight = true
playerid = obj_player1
else
playerid = obj_player2

if global.tomatofollow = true && sprite_index != spr_toppintomato_intro
{
image_alpha = playerid.image_alpha
if playerid.hsp != 0
sprite_index = spr_toppintomato_run
else
sprite_index = spr_toppintomato
depth = -6

if global.cheesefollow = true
{
ds_queue_enqueue(followQueue, obj_pizzakincheese.x+ (image_xscale * 4));
ds_queue_enqueue(followQueue, obj_pizzakincheese.y-2);
}
else 
if global.shroomfollow = true
{
ds_queue_enqueue(followQueue, obj_pizzakinshroom.x+ (image_xscale * 4));
ds_queue_enqueue(followQueue, obj_pizzakinshroom.y-2);
}
else
{
//Follow Player
ds_queue_enqueue(followQueue, playerid.x);
ds_queue_enqueue(followQueue, playerid.y);
}
LAG_STEPS = 10;
if (ds_queue_size(followQueue) > LAG_STEPS*2) {
  x=ds_queue_dequeue(followQueue)-image_xscale*4;
  y=ds_queue_dequeue(followQueue)+2;
}
image_xscale = playerid.xscale

}
break

case ("strongcold"):

if sprite_index = spr_xmastomatotoppin_intro && floor(image_index) = image_number -1
sprite_index = spr_xmastomatotoppin_idle

if global.tomatofollow = true && sprite_index != spr_xmastomatotoppin_intro //sprite_index != spr_toppintomato_intro
{
image_alpha = playerid.image_alpha
if playerid.hsp != 0 
//sprite_index = spr_pizzakintomato_run
sprite_index = spr_xmastomatotoppin_walk
else
//sprite_index = spr_pizzakintomato
sprite_index = spr_xmastomatotoppin_idle
depth = -6

if global.cheesefollow = true
{
ds_queue_enqueue(followQueue, obj_pizzakincheese.x+ (image_xscale * 4));
ds_queue_enqueue(followQueue, obj_pizzakincheese.y-2);
}
else 
if global.shroomfollow = true
{
ds_queue_enqueue(followQueue, obj_pizzakinshroom.x+ (image_xscale * 4));
ds_queue_enqueue(followQueue, obj_pizzakinshroom.y-2);
}
else
{
//Follow Player
ds_queue_enqueue(followQueue, playerid.x);
ds_queue_enqueue(followQueue, playerid.y);
}
LAG_STEPS = 10;
if (ds_queue_size(followQueue) > LAG_STEPS*2) {
  x=ds_queue_dequeue(followQueue)-image_xscale*4;
  y=ds_queue_dequeue(followQueue)+2;
}
image_xscale = playerid.xscale

}
break

}


if global.playerhealth = 1 && global.tomatofollow = true
{
sprite_index = spr_toppintomato_panic
}


