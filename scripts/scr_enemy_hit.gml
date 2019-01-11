//If hsp is 0 then will change back to the idle state.
//Otherwise will continue to reduce the hsp of the enemy.
if(hsp == 0)
{
   state = States.enemyIdle;
   sprite_index = punchingBag_idle;
} 
if(hsp < 0)
{
   hsp++
}
if(hsp > 0)
{
   hsp--
}

scr_collidemove2(obj_wall, obj_p2);
