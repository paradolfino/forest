

image_speed = 0;
var _x_input = keyboard_check(vk_right) - keyboard_check(vk_left);
var _y_input = keyboard_check(vk_down) - keyboard_check(vk_up);
var _input_direction = point_direction(0, 0, _x_input, _y_input);

if _x_input == 0 && _y_input == 0 {
	image_index = 0;
	image_speed = 0;
	apply_friction_to_movement_entity();
} else {
	image_speed = 0.6;
	get_direction_facing(_input_direction);
	add_movement_maxspeed(_input_direction, acceleration_, max_speed_);
	if _x_input == -1 {
		image_xscale = -1;	
	} else {
		image_xscale = 1;	
	}
}


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
move_movement_entity(false);