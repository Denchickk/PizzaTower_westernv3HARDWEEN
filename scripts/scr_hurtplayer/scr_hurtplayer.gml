//Knight armor remove

    with (argument0)
    {
    
    if (state = states.knightpep or state = states.knightpepattack or state = states.knightpepslopes) && cutscene = false
    {

    }
    //Ghost
	    
    else if state = states.ghost
    {
    
   
    }
    //Bomb!!
    else if state = states.bombpep && hurted = false 
    {
    
   
    }
    
	//Weenie ride
	    else if state = states.rideweenie
    {
    
   
    }
    //Boxxed
    else if state = states.boxxedpep
    {
    
    }
	    
    //Tumble
    else if state = states.tumble
    {
    
    }
	
	
    //Cheesed
    
    else if (state = states.cheesepep or state = states.cheesepepstick) 
    {
    
	
    }

//Pizza Shield
else if pizzashield = true

 {
	 pizzashield = false
	 with instance_create(x,y,obj_sausageman_dead)
	 sprite_index = spr_pizzashield_collectible
	 hsp = -xscale * 4
vsp = -5
	 state =states.bump
	 sprite_index = spr_bump
	 
alarm[8] = 60
alarm[7] = 120
hurted = true
scr_soundeffect(sfx_pephurt)
 }
    
    
    
//Hurt
else if state != states.hurt && state != states.grabbed && hurted = false && cutscene = false 
{

if character = "V"
global.playerhealth -= 25

if state = states.mort
{
with instance_create(x,y,obj_sausageman_dead)
sprite_index = spr_mortdead
	repeat (6) with instance_create(x,y,obj_debris)
	sprite_index = spr_feather
grav = 0.5
}



//Pizza delivery HP
if global.pizzadelivery = true
if global.hp > 0
global.hp -= 1

//scr_soundeffect(sfx_oh, sfx_ohman,sfx_hurt1,sfx_hurt2,sfx_hurt3, sfx_mammamia)

if state =states.grabbed
{
if object_index = obj_player1
y = obj_player2.y
else
y = obj_player1.y
}


scr_soundeffect(sfx_pephurt)

alarm[8] = 100
alarm[7] = 50
hurted = true
if xscale = other.image_xscale
sprite_index = spr_hurtjump
else
sprite_index = spr_hurt
movespeed = 12
vsp = -5
timeuntilhpback = 300

if instance_exists(obj_player2) && global.coop = true
{


if object_index = obj_player2
{
if obj_player1.spotlight = false
{
obj_camera.shoving = true
obj_camera.image_index = 0
obj_player1.spotlight = true
	scr_changetoppings()

obj_player1.depth = -7
obj_player2.depth = -6
}

}

if object_index = obj_player1
{
if obj_player1.spotlight = true
{
obj_camera.shoving = true
obj_camera.image_index = 0
obj_player1.spotlight = false
	scr_changetoppings()

obj_player1.depth = -6
obj_player2.depth = -7	
}
}

}

instance_create(x, y, obj_spikehurteffect)
state = states.hurt
image_index = 0
flash = true




global.hurtcounter += 1

if global.timeattack = false
{
if global.collect > 100
global.collect -= 100
else
global.collect = 0


if global.collect != 0
{
	if character = "P" or character  = "V"
repeat (10) with instance_create(x,y,obj_pizzaloss)

sprite_index = choose(spr_shroomcollect,spr_tomatocollect,spr_cheesecollect,spr_sausagecollect,spr_pineapplecollect)
else
repeat (10) instance_create(x,y,obj_pizzaloss) 

}
}









}
}


