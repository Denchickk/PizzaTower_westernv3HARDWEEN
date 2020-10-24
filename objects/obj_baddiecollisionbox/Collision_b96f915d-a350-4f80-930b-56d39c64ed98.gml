//Throw Collision
if object_index != obj_pizzaball
{
with (other)
{
if instance_exists(baddieID) && instance_exists(other.baddieID) && baddieID != other.id 
{
             if (baddieID.state = states.stun  && baddieID.thrown = true) 
{
instance_destroy(other.baddieID)

}
}
 }
 }
 

