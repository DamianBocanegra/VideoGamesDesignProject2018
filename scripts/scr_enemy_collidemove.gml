//Horizontal Collision
if(place_meeting(x+hsp, y, obj_wall))
{
   while(!place_meeting(x+sign(hsp), y, obj_wall))
   {
      x += sign(hsp);
   }   
   hsp = 0;

}

x+= hsp;

//Vertical Collsion
if(place_meeting(x, y+vsp, obj_wall))
{
   while(!place_meeting(x, y+sign(vsp), obj_wall))
   {
      y += sign(vsp);
   }   
   vsp = 0;

}
y += vsp;

//Collision with deathblock
if(place_meeting(x, y+1, obj_deathblock))
{
    liv--
    if(liv == 0)
    {
       instance_destroy()
    }
    x = 672
    y = 576
    vsp = 0
    
}
