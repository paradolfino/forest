var dist = 2;
var anim_speed = 0.6;
image_speed = 0;
if (keyboard_check(vk_right) && !place_meeting(x+dist, y, o_solid)) {
	x += dist;
	sprite_index = s_player_run_right;
	image_speed = anim_speed;
}

if (keyboard_check(vk_left) && !place_meeting(x-dist, y, o_solid)) {
	x -= dist;
}
if (keyboard_check(vk_up) && !place_meeting(x, y-dist, o_solid)) {
	y -= dist;
} 
if (keyboard_check(vk_down) && !place_meeting(x, y+dist, o_solid)) {
	y += dist;	
}