if  ds_list_find_index(global.saveroom, id) != -1  
instance_destroy() 



if global.panic = false{
instance_destroy()
}
roomname = room_get_name(room)
