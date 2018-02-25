

image_speed = 0;
var _speed = 0.6; //instance var animation speed
var _x_input = keyboard_check(vk_right) - keyboard_check(vk_left);

if (keyboard_check(vk_right) && !place_meeting(x+dist_, y, o_solid)) {
	x += dist_;
	direction_facing_ = dir.right;
	image_speed = _speed;
	image_xscale = 1;
}

if (keyboard_check(vk_left) && !place_meeting(x-dist_, y, o_solid)) {
	x -= dist_;
	direction_facing_ = dir.left;
	image_speed = _speed;
	image_xscale = -1;
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