//This scrpit is for the player's normal movment.
scr_player_inputs()

//This will find the direction the player is travling.
//Then set hsp based on the movespeed of the player
move = key_left + key_right;

if(move == 1)
{
 dir = 1; 

}
if(move == -1)
{
   dir = -1
}

hsp = move * movespeed;

//This will casuse the player to fall.
if(vsp < 10) vsp += grav;

//This checks to see if the player is on the floor and if the jump key is pressed.
//If true the player will jump. 
if(place_meeting(x, y+1, obj_wall) || place_meeting(x, y+1, obj_p2))
{
    vsp = key_jump * -jumpspeed
    grounded = true;
    stun = false;
    
}
else
{
  grounded = false;
}


//Checks to see if he attack key was pressed. 
//If true will change the player to the attack state.
if(key_attack && !stun)
{
   state = States.attack;
   if(grounded)
   {
      sprite_index = spr_luke_attack1;
   }
   else
   {
      sprite_index = spr_luke_jump_attack1;
   }
}

if(key_hit)
{
   state = States.enemyHit;
   whohitme = States.p2Hit;
   sprite_index = spr_luke_hit;
   
   if(other.image_xscale < 0)
   {
     hsp = movespeed
   }
   else
   {
     hsp = -movespeed
   }
}





