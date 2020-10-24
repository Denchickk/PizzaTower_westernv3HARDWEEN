
//Knight armor remove
    with (obj_player)
    {
    
    if (state = states.knightpep or state = states.knightpepattack or state = states.knightpepslopes) && cutscene = false
    {
instance_destroy(other)
    }
    
    //Bomb!!
    else if state = states.bombpep && hurted = false 
    {
    
   
    }
    
    //Boxxed
    else if state = states.boxxedpep
    {
    
    }
    //Cheesed
    
    else if (state = states.cheesepep or state = states.cheesepepstick) 
    {
    
	
    }

    
    
    
//Hurt
else if state != states.hurt && cutscene = false && state != states.bump 
{

xscale = -other.image_xscale
hsp = other.image_xscale * 10
if other.sprite_index != spr_grandpa_punch
{
other.image_index = 0
other.sprite_index = spr_grandpa_punch
}



global.hurtcounter += 1
alarm[8] = 60
alarm[7] = 120
hurted = true
if xscale = other.image_xscale
sprite_index = spr_hurtjump
else
sprite_index = spr_hurt
movespeed = 8
vsp = -5
timeuntilhpback = 300

if global.collect > 100
global.collect -= 100
else
global.collect = 0

if global.collect != 0
{
instance_create(x,y,obj_pizzaloss)
instance_create(x,y,obj_pizzaloss)
instance_create(x,y,obj_pizzaloss)
instance_create(x,y,obj_pizzaloss)
instance_create(x,y,obj_pizzaloss)
instance_create(x,y,obj_pizzaloss)
instance_create(x,y,obj_pizzaloss)
instance_create(x,y,obj_pizzaloss)
instance_create(x,y,obj_pizzaloss)
instance_create(x,y,obj_pizzaloss)
instance_create(x,y,obj_pizzaloss)
instance_create(x,y,obj_pizzaloss)
}





instance_create(x, y, obj_spikehurteffect)
state = states.hurt
image_index = 0
flash = true



}
}


