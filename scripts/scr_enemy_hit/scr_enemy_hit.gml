
if scr_solid(x,y-1) && (sprite_index = flyingspr or sprite_index = hitspr)
{
image_index = 0
state = states.hitceilling

}



if straightthrow = true
{
vsp = 0

}

//Animation
if vsp < 0 && floor(image_index) != 2 && sprite_index != flyingspr
sprite_index = hitspr
else if vsp < 0
sprite_index = flyingspr
else if sprite_index = flyingspr
{
sprite_index = stunfalltransspr
}
else if floor(image_index) = 4 && sprite_index = stunfalltransspr
{
sprite_index = stunfallspr
}

if grounded && floor(vsp) > 0
{
instance_create(x,y,obj_landcloud)
state = states.stun
image_index = 0
}




image_speed = 0.35


if ((scr_solid(x+1,y) && image_xscale = -1) or (scr_solid(x-1,y) && image_xscale = 1)) && vsp > -5 && !scr_solid(x+sign(hsp),y) 
{

image_index = 0
sprite_index = hitwallspr
state = states.hitwall
}