if (keyboard_check(vk_right) && !place_meeting(x+4, y, o_solid)) {
	x += 4;
}

if (keyboard_check(vk_left)) {
	x -= 4;
}
if (keyboard_check(vk_up)) {
	y -= 4;
} 
if (keyboard_check(vk_down)) {
	y += 4;	
}