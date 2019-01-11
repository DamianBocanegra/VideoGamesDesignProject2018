//scr_collidemove2(obj, obj)
//Horizontal Collision and movment
if(place_meeting(x+hsp, y, argument0) || place_meeting(x+hsp, y, argument1))
{
   while(!place_meeting(x+sign(hsp), y, argument0) && !place_meeting(x+sign(hsp), y, argument1))
   {
      x += sign(hsp);
   }   
   hsp = 0;

}

x+= hsp;

//Vertical Collsion and movment
if(place_meeting(x, y+vsp, argument0) || place_meeting(x, y+vsp, argument1))
{
   while(!place_meeting(x, y+sign(vsp), argument0) && !place_meeting(x, y+sign(vsp), argument1))
   {
      y += sign(vsp);
   }   
   vsp = 0;

}
y += vsp;

//Collision with deathblock
//Will cause player to respawn in original spawn point.
if(place_meeting(x, y+1, obj_deathblock))
{
    liv--
    if(liv == 0)
    {
      if(instance_exists(obj_punchingBag))
      {
          room_goto(room2)
      }
      instance_destroy()
    }
    x = spawnx;
    y = spawny;
    state = States.normal;
    perc = 0;
    vsp = 0;
    hsp = 0;
}

if(place_meeting(x, y+vsp, obj_punchingBag) || place_meeting(x+hsp, y, obj_punchingBag))
{
   if(state = States.normal)
   {
   state = States.enemyHit;
   whohitme = States.p2Hit;
   sprite_index = spr_luke_hit;
   perc++;
   
   if(other.image_xscale < 0)
   {
     hsp = movespeed
   }
   else
   {
     hsp = -movespeed
   }
   }
}

