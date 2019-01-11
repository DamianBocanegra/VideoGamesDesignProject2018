//This script is to handle the player's attack state.
//When in this state the player's sprite will be the playerAttack sprite

//First locks the player in place.
hsp = 0
vsp = 0

if(grounded)
{
switch(combo)
{
   case 0:
   if(image_index >= 5 && image_index <= 7 && key_attack)
   {
      combo++
      sprite_index = spr_luke_attack2;
      image_index = 0;
      show_debug_message("Changed to attack 2");
   }
   break;
   case 1:
   if(image_index >= 6 && image_index <= 9 && key_attack)
   {
      combo++
      sprite_index = spr_luke_attack1;
      image_index = 0;
      show_debug_message("Changed to attack 3");
   }
   break;
   case 2:
   show_debug_message("max combo");
   break;

}

switch(sprite_index)
{
   case spr_luke_attack1:
   //Checks to see if the playerAttack sprite is within frame 2 and 4
  //in order to draw the hitbox.
  if(image_index >= 6) && (image_index <= 7)
  {
   //with() function executes code as if it were in that object
   //meaning the follwing code will excute as if it were in obj_player_hitbox
   //First with instance_create() a obj_player_hitbox will be created.
   
   with(instance_create(x,y,obj_luke_hitbox1))
   {
       //This will draw the hitbox in the appropriate direction.
       image_xscale = other.image_xscale; 
       //This will now create the interaction with obj_punchingBag
       //The following code acts as if it was writtin in obj_punchingBag. 

          image_xscale = other.image_xscale;
       //Block that allows attack of p2
       with(instance_place(x,y, obj_p2))
       {
          if(image_xscale == other.image_xscale)
          {
              image_xscale = -image_xscale;
          }
          if(state != States.enemyHit)
          {
             state = States.enemyHit;
             whohitme = States.p1Hit;
             sprite_index = spr_kenshin_hit;
             
             if(other.image_xscale < 0)
             {
               hsp = -(obj_p1.combo + 1) * (movespeed + perc)
               perc = perc + (obj_p1.combo + 1)
             }
             else
             {
               hsp = (obj_p1.combo + 1) * (movespeed + perc)
               perc = perc + (obj_p1.combo + 1)
             }
          }
       }
       
       //Attack punchingBag
       with(instance_place(x,y, obj_punchingBag))
       {
          if(image_xscale == other.image_xscale)
          {
              image_xscale = -image_xscale;
          }
          if(state != States.enemyHit)
          {
             state = States.enemyHit;
             whohitme = States.p1Hit;
             sprite_index = punchingBag_hit;
             
             if(other.image_xscale < 0)
             {
               hsp = -10
             }
             else
             {
               hsp = 10
             }
          }
       }
   }
  }  
   break;
   
   case spr_luke_attack2:
   //Checks to see if the playerAttack sprite is within frame 2 and 4
  //in order to draw the hitbox.
  if(image_index >= 6) && (image_index <= 9)
  {
   //with() function executes code as if it were in that object
   //meaning the follwing code will excute as if it were in obj_player_hitbox
   //First with instance_create() a obj_player_hitbox will be created.
   
   with(instance_create(x,y,obj_luke_hitbox2))
   {
       //This will draw the hitbox in the appropriate direction.
       image_xscale = other.image_xscale; 
       //This will now create the interaction with obj_punchingBag
       //The following code acts as if it was writtin in obj_punchingBag. 

          image_xscale = other.image_xscale;
       //Block that allows attack of p2
       with(instance_place(x,y, obj_p2))
       {
          image_xscale = other.image_xscale;
          if(state != States.enemyHit)
          {
             state = States.enemyHit;
             whohitme = States.p1Hit;
             sprite_index = spr_kenshin_hit;
             
             if(other.image_xscale < 0)
             {
                hsp = -(obj_p1.combo + 1) * (movespeed + perc)
               perc = perc + (obj_p1.combo + 1)
             }
             else
             {
               hsp = (obj_p1.combo + 1) * (movespeed + perc)
               perc = perc + (obj_p1.combo + 1)
             }
          }
       }
       //Attack the punching bag
       with(instance_place(x,y, obj_punchingBag))
       {
          if(image_xscale == other.image_xscale)
          {
              image_xscale = -image_xscale;
          }
          if(state != States.enemyHit)
          {
             state = States.enemyHit;
             whohitme = States.p1Hit;
             sprite_index = punchingBag_hit;
             
             if(other.image_xscale < 0)
             {
               hsp = -10
             }
             else
             {
               hsp = 10
             }
          }
       }
   }
  }
  break;  
}

}

else
{

switch(combo)
{
   case 0:
   if(image_index >= 6 && image_index <= 8 && key_attack)
   {
      combo++
      sprite_index = spr_luke_jump_attack2;
      image_index = 0;
      show_debug_message("Changed to attack 2");
   }
   break;
   case 1:
   show_debug_message("Full air combo");
   break;

}

switch(sprite_index)
{
   case spr_luke_jump_attack1:
   //Checks to see if the playerAttack sprite is within frame 2 and 4
  //in order to draw the hitbox.
  if(image_index >= 5) && (image_index <= 8)
  {
   //with() function executes code as if it were in that object
   //meaning the follwing code will excute as if it were in obj_player_hitbox
   //First with instance_create() a obj_player_hitbox will be created.
   
   with(instance_create(x,y,obj_luke_jump_hitbox1))
   {
       //This will draw the hitbox in the appropriate direction.
       image_xscale = other.image_xscale; 
       //This will now create the interaction with obj_punchingBag
       //The following code acts as if it was writtin in obj_punchingBag. 

          image_xscale = other.image_xscale;
       //Block that allows attack of p2
       with(instance_place(x,y, obj_p2))
       {
          if(image_xscale == other.image_xscale)
          {
              image_xscale = -image_xscale;
          }
          if(state != States.enemyHit)
          {
             state = States.enemyHit;
             whohitme = States.p1Hit;
             sprite_index = spr_kenshin_hit;
             
             if(other.image_xscale < 0)
             {
                hsp = -(obj_p1.combo + 1) * (movespeed + perc)
               perc = perc + (obj_p1.combo + 1)
             }
             else
             {
               hsp = (obj_p1.combo + 1) * (movespeed + perc)
               perc = perc + (obj_p1.combo + 1)
             }
          }
       }
       
       //Attack punchingBag
       with(instance_place(x,y, obj_punchingBag))
       {
          if(image_xscale == other.image_xscale)
          {
              image_xscale = -image_xscale;
          }
          if(state != States.enemyHit)
          {
             state = States.enemyHit;
             whohitme = States.p1Hit;
             sprite_index = punchingBag_hit;
             
             if(other.image_xscale < 0)
             {
               hsp = -10
             }
             else
             {
               hsp = 10
             }
          }
       }
   }
  }  
   break;
   
   case spr_luke_jump_attack2:
   //Checks to see if the playerAttack sprite is within frame 2 and 4
  //in order to draw the hitbox.
  if(image_index >= 6) && (image_index <= 9)
  {
   //with() function executes code as if it were in that object
   //meaning the follwing code will excute as if it were in obj_player_hitbox
   //First with instance_create() a obj_player_hitbox will be created.
   
   with(instance_create(x,y,obj_luke_jump_hitbox2))
   {
       //This will draw the hitbox in the appropriate direction.
       image_xscale = other.image_xscale; 
       //This will now create the interaction with obj_punchingBag
       //The following code acts as if it was writtin in obj_punchingBag. 


       //Block that allows attack of p2
       with(instance_place(x,y, obj_p2))
       {
          if(image_xscale == other.image_xscale)
          {
              image_xscale = -image_xscale;
          }
          if(state != States.enemyHit)
          {
             state = States.enemyHit;
             whohitme = States.p1Hit;
             sprite_index = spr_kenshin_hit;
             
             if(other.image_xscale < 0)
             {
                hsp =  -(obj_p1.combo + 1) * (movespeed + perc)
                perc = perc + (obj_p1.combo + 1)
             }
             else
             {
               hsp = (obj_p1.combo + 1) * (movespeed + perc)
               perc = perc + (obj_p1.combo + 1)
             }
          }
       }
       
       //Attack punchingBag
       with(instance_place(x,y, obj_punchingBag))
       {
          if(image_xscale == other.image_xscale)
          {
              image_xscale = -image_xscale;
          }
          if(state != States.enemyHit)
          {
             state = States.enemyHit;
             whohitme = States.p1Hit;
             sprite_index = punchingBag_hit;
             
             if(other.image_xscale < 0)
             {
               hsp = -10
             }
             else
             {
               hsp = 10
             }
          }
       }
   }
  }
  break;  
}  

}

scr_collidemove2(obj_wall, obj_p2);
scr_animate()
