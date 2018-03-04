

image_speed = 0;
var _speed = 0.6; //instance var animation speed
_x_input = keyboard_check(vk_right) - keyboard_check(vk_left);
_y_input = keyboard_check(vk_down) - keyboard_check(vk_up);
//direction_ = point_direction(0, 0, _x_input, _y_input);

if (_x_input != 0 && !place_meeting(x+dist_ * _x_input, y, o_solid)) {
	x += dist_ * _x_input;
	direction_facing_ = dir.right;
	image_speed = _speed;
	image_xscale = _x_input;
}
if (_y_input != 0 && !place_meeting(x, y + dist_ * _y_input, o_solid)) {
	y += dist_ * _y_input;
	direction_facing_ = dir.up;
	image_speed = _speed;
}


sprite_index = sprite_[player.move, direction_facing_];