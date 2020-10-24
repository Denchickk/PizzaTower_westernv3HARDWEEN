image_speed = 0
hurtpoints=false
timepoints= false
escapetimepoints = false
treasurepoints =false
lastbesttimeminutes = 99
lastbesthurt = 99
lastbesttimeseconds = 99
image_index =1

if room != rm_editor {
	depth = 50
}
endgate = false

roomname = room_get_name(room)
global.progress = string_letters(roomname)

if obj_player.character = "S"
instance_destroy()
roomname = obj_null