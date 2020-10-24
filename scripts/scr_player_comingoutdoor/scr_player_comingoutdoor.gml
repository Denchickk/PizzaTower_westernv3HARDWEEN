mach2 = 0
jumpAnim = true
dashAnim = true
landAnim = false
moveAnim = true
stopAnim = true
crouchslideAnim = true
crouchAnim = true
machhitAnim = false

hsp = 0


if c < 255
c += 5

image_blend = make_colour_hsv(0,0,c);


//Back to normal
if floor(image_index) = image_number-1 
{
start_running = true
movespeed = 0
state = states.normal
image_alpha = 1
c =0
image_blend = make_colour_hsv(0,0,255);
}


//Animations

if sprite_index != spr_Timesup
sprite_index = spr_walkfront

image_speed = 0.35

