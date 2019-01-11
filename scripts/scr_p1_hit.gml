//If hsp is 0 then will change back to the idle state.
//Otherwise will continue to reduce the hsp of the enemy.
switch(whohitme)
{
  case States.p1Hit:
     scr_collidemove2(obj_wall, obj_p2)
     break;
  case States.p2Hit:
     scr_collidemove2(obj_wall, obj_p1)
     break;
}

if(hsp == 0)
{
   state = States.normal;
   whohitme = States.noHit;
   sprite_index = spr_luke_idle;

} 
if(hsp < 0)
{
   hsp++
}
if(hsp > 0)
{
   hsp--
}


scr_animate()
