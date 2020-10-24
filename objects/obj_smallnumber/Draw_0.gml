//Draw Text
smallnumber = font_add_sprite_ext(spr_smallnumber, "1234567890", true, 0)


switch color
{
case 0:
draw_set_color( make_colour_rgb(255, 255, 255))
break
	
	
case 1:
draw_set_color( make_colour_rgb(96, 208, 72))
break

case 2:
draw_set_color( make_colour_rgb(224, 144, 0))
break

case 3:
draw_set_color(make_colour_rgb(248, 0, 0))
break
}



draw_set_font(smallnumber)
draw_set_halign(fa_center);




shader_reset()


//Flash
if (flash) { 
    shader_set(shd_hit);    // Sets the shader to our shader file we created earlier
draw_text(x,y,number)
  // Draws the sprite, but now we have a shader set so it draws it as white
    shader_reset(); // Resets the shader to the default one (does nothing)

} else {
	
	draw_text(x,y,number)

}

