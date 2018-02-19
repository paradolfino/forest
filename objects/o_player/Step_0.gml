
image_speed = 0;
var _speed = 0.6; //animation speed
if (keyboard_check(vk_right) && !place_meeting(x+dist_, y, o_solid)) {
	x += dist_;
	sprite_index = s_player_run_right;
	image_speed = _speed;
	image_xscale = 1;
}

if (keyboard_check(vk_left) && !place_meeting(x-dist_, y, o_solid)) {
	x -= dist_;
	sprite_index = s_player_run_right;
	image_speed = _speed;
	image_xscale = -1;
}
if (keyboard_check(vk_up) && !place_meeting(x, y-dist_, o_solid)) {
	y -= dist_;
	sprite_index = s_player_run_up;
	image_speed = _speed;
} 
if (keyboard_check(vk_down) && !place_meeting(x, y+dist_, o_solid)) {
	y += dist_;
	sprite_index = s_player_run_down;
	image_speed = _speed;
}