

image_speed = 0;
var _speed = 0.6; //instance var animation speed
var _x_input = keyboard_check(vk_right) - keyboard_check(vk_left);

if (_x_input != 0 && !place_meeting(x+dist_ * _x_input, y, o_solid)) {
	x += dist_ * _x_input;
	image_speed = _speed;
	image_xscale = _x_input;
}

if (keyboard_check(vk_up) && !place_meeting(x, y-dist_, o_solid)) {
	y -= dist_;
	direction_facing_ = dir.up;
	image_speed = _speed;
} 
if (keyboard_check(vk_down) && !place_meeting(x, y+dist_, o_solid)) {
	y += dist_;
	direction_facing_ = dir.down;
	image_speed = _speed;
}

sprite_index = sprite_[player.move, direction_facing_];