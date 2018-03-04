

image_speed = 0;
var _speed = 0.6; //instance var animation speed
var _x_input = keyboard_check(vk_right) - keyboard_check(vk_left);
var _y_input = keyboard_check(vk_down) - keyboard_check(vk_up);
var _input_direction = point_direction(0, 0, _x_input, _y_input);


get_direction_facing();
//if (_x_input != 0 && !place_meeting(x+dist_ * _x_input, y, o_solid)) {
//	x += dist_ * _x_input;
	
//	image_speed = _speed;
//	image_xscale = _x_input;
//}
//if (_y_input != 0 && !place_meeting(x, y + dist_ * _y_input, o_solid)) {
//	y += dist_ * _y_input;
	
//	image_speed = _speed;
//}


sprite_index = sprite_[player.move, direction_facing_];