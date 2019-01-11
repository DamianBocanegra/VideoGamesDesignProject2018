//This script is used for animation of the player.

//This will check to see if the player is moving.
//If the player is moving it will flip the sprite in the direction of movment
if(move != 0) image_xscale = move;


//This check whether or not the player is in the attack state.
//If the player is in the attack state its sprite will be set
// to the playerAttack sprite which has a 6 frame animation.
//If that animation is on the last frame it will change the player state
//back to the normal state and change its sprite to the normal sprite.
if(state == States.attack)
{
   if(image_index == 3)
   {
      state = States.normal;
      sprite_index = spr_kenshin_idle;
   }
}
if(state == States.normal)
{
if(place_meeting(x, y+1, obj_wall))
{
   if(move != 0)
   {
     sprite_index = spr_kenshin_running;
   }
   else
   {
     sprite_index = spr_kenshin_idle;
   }

}
else
{
   sprite_index = spr_kenshin_jump;
}

if(vsp < 0)
{
  sprite_index = spr_kenshin_jump;
}
}
