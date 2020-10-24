
global.baddiespeed -= 1

if global.stylethreshold != 2
global.baddiepowerup = false

if global.stylethreshold != 3
global.baddierage = false

with obj_baddie
movespeed =  global.baddiespeed


with obj_tv
{
message = "HEAT DOWN..."
alarm[0] = 200
showtext = true
}


obj_stylebar.toggle = true
obj_stylebar.alarm[0] = 5