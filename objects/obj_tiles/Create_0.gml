/// @description 
image_speed = 0;
if sprite_get_number(sprite_index) < 2 && global.autotile == true {
	with object_index {
		image_index = scr_autotile();
	}
}

if room != rm_editor {
	alarm[0] = 5;
}
/*
if sprite_get_number(sprite_index) < 2 && global.autotile == true {
	width = sprite_width
	if place_meeting(x + width, y, object_index) {
		with instance_place(x + width, y, object_index) {
			image_index = scr_autotile();
		}
	}
	if place_meeting(x - width, y, object_index) {
		with instance_place(x - width, y, object_index) {
			image_index = scr_autotile();
		}
	}
	if place_meeting(x, y + width, object_index) {
		with instance_place(x, y + width, object_index) {
			image_index = scr_autotile();
		}
	}
	if place_meeting(x, y - width, object_index) {
		with instance_place(x, y - width, object_index) {
			image_index = scr_autotile();
		}
	}
}

if room != rm_editor {
	alarm[0] = 5;
}