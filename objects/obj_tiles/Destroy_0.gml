/// @description 
if room != rm_editor exit;
if global.autotile == false exit;
with object_index {
	alarm[1] = 1;	
}
/*
	if place_meeting(x + width, y, object_index) {
		with instance_place(x + width, y, object_index) {
			alarm[1] = 1;
		}
	}
	if place_meeting(x - width, y, object_index) {
		with instance_place(x - width, y, object_index) {
			alarm[1] = 1;
		}
	}
	if place_meeting(x, y + width, object_index) {
		with instance_place(x, y + width, object_index) {
			alarm[1] = 1;
		}
	}
	if place_meeting(x, y - width, object_index) {
		with instance_place(x, y - width, object_index) {
			alarm[1] = 1;
		}
	}