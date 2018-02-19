var dist = 2;
var speed_ = 0.6;
image_speed = 0;
if (keyboard_check(vk_right) && !place_meeting(x+dist, y, o_solid)) {
	x += dist;
	sprite_index = s_player_run_right;
	image_speed = speed_;
	image_xscale = 1;
}

if (keyboard_check(vk_left) && !place_meeting(x-dist, y, o_solid)) {
	x -= dist;
	sprite_index = s_player_run_right;
	image_speed = speed_;
	image_xscale = -1;
}
if (keyboard_check(vk_up) && !place_meeting(x, y-dist, o_solid)) {
	y -= dist;
	sprite_index = s_player_run_up;
	image_speed = speed_;
} 
if (keyboard_check(vk_down) && !place_meeting(x, y+dist, o_solid)) {
	y += dist;
	sprite_index = s_player_run_down;
	image_speed = speed_;
}