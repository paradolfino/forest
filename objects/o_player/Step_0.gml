var dist = 4;
var anim_speed = 0.6;
if (keyboard_check(vk_right) && !place_meeting(x+4, y, o_solid)) {
	x += dist;
	sprite_index = s_player_run_right;
	image_speed = anim_speed;
}

if (keyboard_check(vk_left) && !place_meeting(x-4, y, o_solid)) {
	x -= dist;
}
if (keyboard_check(vk_up) && !place_meeting(x, y-4, o_solid)) {
	y -= dist;
} 
if (keyboard_check(vk_down) && !place_meeting(x, y+4, o_solid)) {
	y += dist;	
}