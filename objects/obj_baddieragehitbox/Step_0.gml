if instance_exists(ID)
{
x = ID.x
y = ID.y
image_xscale = ID.image_xscale
image_index = ID.image_index

with (ID)
{
if state != states.rage 
{
	ragehitbox = false
instance_destroy(other)
}
}

}
else 
instance_destroy()


