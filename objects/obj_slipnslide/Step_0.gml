

if drop = false
scr_collide()
else
{
if (vsp < 12) vsp += grav;

x += hsp;
y += floor(vsp);
}


if scr_solid(x,y+1) && drop =  false
{
hsp = 0
}

if banana = 4
instance_destroy()