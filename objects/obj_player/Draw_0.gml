
//Draw
pal_swap_set(spr_palette, paletteselect, false)
draw_sprite_ext(sprite_index, image_index, x, y, xscale, yscale, image_angle, image_blend, image_alpha);
if string_letters(roomname) = "farm"
{
    draw_sprite_ext(sprite_index, image_index, x, y, xscale, yscale, image_angle, c_black, 0.4)
}

shader_reset()


//Flash
if (flash) { 
    shader_set(shd_hit);    // Sets the shader to our shader file we created earlier
    //Draw
draw_sprite_ext(sprite_index, image_index, x, y, xscale, yscale, image_angle, image_blend, image_alpha);
  // Draws the sprite, but now we have a shader set so it draws it as white
    shader_reset(); // Resets the shader to the default one (does nothing)

} else {

}