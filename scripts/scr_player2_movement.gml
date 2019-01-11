//This scrpit is for the player's normal movment.

//This will find the direction the player is travling.
//Then set hsp based on the movespeed of the player
move = key_left + key_right;
hsp = move * movespeed;

//This will casuse the player to fall.
if(vsp < 10) vsp += grav;


//This checks to see if the player is on the floor and if the jump key is pressed.
//If true the player will jump, and set an alarm for 15 iteratinons. 
if(place_meeting(x, y+1, obj_wall) || place_meeting(x, y+1, obj_p1))
{
    
    vsp = key_jump * -jumpspeed
}

//Checks to see if he attack key was pressed. 
//If true will change the player to the attack state.
if(key_attack)
{
   state = States.attack;
   sprite_index = spr_kenshin_attack1;
}

if(key_hit)
{
   state = States.enemyHit;
   whohitme = States.p1Hit;
   sprite_index = spr_kenshin_hit;
   
   if(other.image_xscale < 0)
   {
     
     hsp = movespeed
   }
   else
   {
     hsp = -movespeed
   }
}

scr_collidemove2(obj_wall, obj_p1)
scr_animatep2()



