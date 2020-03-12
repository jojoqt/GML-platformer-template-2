/// @description add platformer mechanics

// get keyboard inputs
// keyboard_ckeck(key) will return 1 if pressed 0 if not

key_right = keyboard_check(vk_right); //ord ('D') for d
key_left = keyboard_check(vk_left); // ord ('A') for a
key_jump = keyboard_check(vk_space); 

//work out where to move horizontally
hsp = (key_right - key_left) * hsp_walk; //will equal 0 -4 or 4

vsp = vsp + grv;

if ( place_meeting(x, y + 1, oWall) ) and (key_jump)
{
	vsp = vsp_jump;
}
//move character by hsp x = x position of player on canvas

var onepixel  = sign(hsp)
if ( place_meeting(x + hsp, y, oWall) )
{
	// move as close as we can 
	//move 1px towards the wall until we're 1 pixel away
	while ( !place_meeting(x + onepixel, y, oWall) )
	{
		x = x + onepixel;
	}
	hsp = 0; // once were 1 pixel away, stop
}
x = x + hsp;
var onepixel = sign(vsp);
if (place_meeting(x, y + vsp, oWall) )
{
	while ( !place_meeting(x, y + onepixel, oWall) )
	{
		y = y + onepixel;
	}
	vsp = 0;
}

y = y + vsp;