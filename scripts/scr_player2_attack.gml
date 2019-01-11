//This script is to handle the player's attack state.
//When in this state the player's sprite will be the playerAttack sprite

//First locks the player in place.
hsp = 0
vsp = 0


//Checks to see if the playerAttack sprite is within frame 2 and 4
//in order to draw the hitbox.
if(image_index >= 2) && (image_index <= 4)
{
   //with() function executes code as if it were in that object
   //meaning the follwing code will excute as if it were in obj_player_hitbox
   //First with instance_create() a obj_player_hitbox will be created.
   
   with(instance_create(x,y,obj_player_hitbox))
   {
       //This will draw the hitbox in the appropriate direction.
       image_xscale = other.image_xscale; 
       //This will now create the interaction with obj_punchingBag
       //The following code acts as if it was writtin in obj_punchingBag. 
      
        with(instance_place(x,y, obj_punchingBag))
       {
          //Checks to see obj_punchingBag is in the enemyHit state.
          //If it is not it will change the state and then change the
          //sprite to punchingBag_hit.
          if(state != States.enemyHit)
          {
              state = States.enemyHit;
              whohitme = States.p2Hit;
              sprite_index = punchingBag_hit;
              
              //This checks the direction of the hitbox so that it can move
              //in the opposite direction of the hitbox.
              if(other.image_xscale < 0)
              {
                 hsp = -8
              }
              else
              {
                 hsp = 8
              }
              
          }
       }
       with(instance_place(x,y, obj_p1))
       {
          if(state != States.enemyHit)
          {
             state = States.enemyHit;
             whohitme = States.p2Hit;
             sprite_index = spr_luke_hit;
             
             if(other.image_xscale < 0)
             {
               hsp = -(movespeed + perc)
               perc = perc + 1;
             }
             else
             {
               hsp = (movespeed + perc)
               perc = perc + 1;
             }
          }
       }
   }
}

scr_collidemove2(obj_wall, obj_p1)
scr_animatep2()



