if (obj_player1.state = states.ghost or obj_player2.state = states.ghost) && away = false
{
away = true
x = -200
y = 100
}
else if away = true && obj_player1.state != states.ghost && obj_player2.state != states.ghost
{
away = false
x = xstart
y = ystart
}
