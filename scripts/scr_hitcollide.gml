//Horizontal Collision and movment
if(place_meeting(x+hsp, y, obj_wall) || place_meeting(x+hsp, y, obj_p2))
{
   while(!place_meeting(x+sign(hsp), y, obj_wall) && !place_meeting(x+sign(hsp), y, obj_p1) && !place_meeting(x+sign(hsp), y, obj_p2))
   {
      x += sign(hsp);
   }   
   hsp = 0;

}

x+= hsp;

//Vertical Collsion and movment
if(place_meeting(x, y+vsp, obj_wall) || place_meeting(x, y+vsp, obj_p2))
{
   while(!place_meeting(x, y+sign(vsp), obj_wall) && !place_meeting(x, y+sign(vsp), obj_p1) && !place_meeting(x, y+sign(vsp), obj_p2))
   {
      y += sign(vsp);
   }   
   vsp = 0;

}
y += vsp;


//Collision with deathblock
if(place_meeting(x, y+1, obj_deathblock))
{
    x = 672
    y = 576
    vsp = 0
}
