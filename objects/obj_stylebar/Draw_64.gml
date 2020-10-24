

//draw_sprite_part_ext(spr_stylebar,0,0,0,92 + -(global.style), sprite_get_height(spr_stylebar),  832,74,1,image_yscale,c_white,alpha)



//draw_text(100, 200,string(global.style))


if global.stylethreshold = 3
{
//draw_sprite_ext(spr_stylepizza,3, 832,74, image_xscale, image_yscale,0,c_white,alpha)
//draw_sprite_part_ext(spr_stylepizzadown,3,0,0, sprite_get_width(spr_stylepizzadown), sprite_get_height(spr_stylepizzadown)-(global.style), 750,-14,image_xscale,image_yscale,c_white,alpha)

draw_sprite_ext(spr_heatmeter4 ,-1, 480, 44+ animationy, image_xscale, image_yscale,0,c_white,alpha)
draw_sprite_part_ext(spr_heatmeter4under,0,0,0, sprite_get_width(spr_heatmeter4under)-(global.style)*2, sprite_get_height(spr_heatmeter4under), 562,-56+ animationy,-1,image_yscale,c_white,alpha)
}
if global.stylethreshold = 2
{
//draw_sprite_ext(spr_stylepizza,2, 832,74, image_xscale, image_yscale,0,c_white,alpha)
//draw_sprite_part_ext(spr_stylepizzadown,2,0,0, sprite_get_width(spr_stylepizzadown), sprite_get_height(spr_stylepizzadown)-(global.style), 750,-14,image_xscale,image_yscale,c_white,alpha)
draw_sprite_ext(spr_heatmeter3 ,-1, 480, 44+ animationy, image_xscale, image_yscale,0,c_white,alpha)
draw_sprite_part_ext(spr_heatmeter3under,0,0,0, sprite_get_width(spr_heatmeter3under)-(global.style)*2, sprite_get_height(spr_heatmeter3under), 562,-56+ animationy,-1,image_yscale,c_white,alpha)

}
if global.stylethreshold = 1
{
//draw_sprite_ext(spr_stylepizza,1, 832,74, image_xscale, image_yscale,0,c_white,alpha)
//draw_sprite_part_ext(spr_stylepizzadown,1,0,0, sprite_get_width(spr_stylepizzadown), sprite_get_height(spr_stylepizzadown)-(global.style), 750,-14,image_xscale,image_yscale,c_white,alpha)

draw_sprite_ext(spr_heatmeter2 ,-1, 480, 44+ animationy, image_xscale, image_yscale,0,c_white,alpha)
draw_sprite_part_ext(spr_heatmeter2under,0,0,0, sprite_get_width(spr_heatmeter2under)-(global.style)*2, sprite_get_height(spr_heatmeter2under), 562,-56+ animationy,-1,image_yscale,c_white,alpha)
}
if global.stylethreshold = 0
{
//draw_sprite_ext(spr_stylepizza,0, 832,74, image_xscale, image_yscale,0,c_white,alpha)
//draw_sprite_part_ext(spr_stylepizzadown,0,0,0, sprite_get_width(spr_stylepizzadown), sprite_get_height(spr_stylepizzadown)-(global.style), 750,-14,-1,image_yscale,c_white,alpha)


draw_sprite_ext(spr_heatmeter1 ,-1, 480, 44 + animationy, image_xscale, image_yscale,0,c_white,alpha)
draw_sprite_part_ext(spr_heatmeter1under,0,0,0, sprite_get_width(spr_heatmeter1under)-(global.style)*2, sprite_get_height(spr_heatmeter1under), 562,-56+ animationy,-1,image_yscale,c_white,alpha)
}