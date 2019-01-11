//React to falling
if(vsp < 10)
{
   vsp += grav;
}


    show_debug_message((point_distance(obj_punchingBag.x,0,obj_p1.x,0)));
    if((point_distance(obj_punchingBag.x,0,obj_p1.x,0)<=36))
       hsp = 0;

    else if(obj_punchingBag.x<obj_p1.x&&(point_distance(obj_punchingBag.x,0,obj_p1.x,0)>=64))
    hsp = 1 * movespeed;
    else if(obj_punchingBag.x>obj_p1.x&&(point_distance(obj_punchingBag.x,0,obj_p1.x,0)>=64))
    hsp = -1 * movespeed;
     //Will cause AI to jump over gaps while following player
    if(place_meeting(x, y+1, obj_wall) && place_meeting(x,y+1, obj_jumpzone) && jumps > 0)
    {
        vsp = 1 * -jumpspeed
        grounded = false
        jumps--;
    }
    else
    {
       grounded = true
       jumps = 1
    }
    
scr_enemy_collidemove();


