
visible = obj_tv.visible


//Trickle up
if global.style > 55 && global.stylethreshold < 3
{
global.stylethreshold += 1
global.style = global.style - 55
scr_heatup()
}
//Trickle down
if global.style < 0 && global.stylethreshold != 0 
{
global.stylethreshold -= 1
global.style = global.style + 55
scr_heatdown()
}


//Minimum
if global.style < 0 && global.stylethreshold = 0
global.style = 0
//Maximum
if global.stylethreshold = 3 && global.style > 55
global.style = 55

visible = obj_tv.visible

if obj_player.y < 200 
alpha = 0.3
else if !( room == rank_room or room == timesuproom or room == boss_room1 or room == Realtitlescreen or room == characterselect)
alpha = 1


if toggle = true
{
animationy += animationspeed
}
