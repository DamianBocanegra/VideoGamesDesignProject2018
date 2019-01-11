//This script is for the jumping state for the player.

//This will casuse the player to fall.
if(vsp < 10) vsp += grav;

//This checks to see if the player is on the ground.
//If the player is on the ground it will change the player to the normal state.
if(place_meeting(x, y+1, obj_wall) || place_meeting(x, y + 1, obj_p2))
{
   state = States.normal;
   sprite_index = spr_luke_idle
}


//Checks to see if he attack key was pressed. 
//If true will change the player to the attack state.
if(key_attack)
{
  state = States.attack;
  sprite_index = playerAttack;
}

scr_collidemove2(obj_wall, obj_p2)

scr_animate()


