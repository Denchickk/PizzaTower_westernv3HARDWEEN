
global.baddiespeed += 1

if global.stylethreshold = 2
global.baddiepowerup = true

if global.stylethreshold = 3
global.baddierage = true

with obj_baddie
movespeed =  global.baddiespeed

with obj_tv
{
message = "HEAT UP!!"
alarm[0] = 200
showtext = true
}

obj_stylebar.toggle = true
obj_stylebar.alarm[0] = 5