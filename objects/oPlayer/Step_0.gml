/// @description add platformer mechanics

// get keyboard inputs
// keyboard_ckeck(key) will return 1 if pressed 0 if not

key_right = keyboard_check(vk_right); //ord ('D') for d
key_left = keyboard_check(vk_left); // ord ('A') for a
key_jump = keyboard_check(vk_space); 

//work out where to move horizontally
hsp = (key_right - key_left) * hsp_walk;
//move character by hsp x = x position of player on canvas
x = x + hsp;