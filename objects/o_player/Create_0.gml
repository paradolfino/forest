initialize_movement_entity(0.5, 1, o_solid);
image_speed = 0;
acceleration_ = 0.5; //instance var
max_speed_ = 1.5;
direction_facing_ = dir.right;
global.player_health = 4; //global var

//enum item {
//	sword,
//	potion,
//	spell,
//	note
//}

//inventory_[item.sword] = "sword";
//inventory_[item.potion] = "potion";
//inventory_[item.spell] = "spell";
//inventory_[item.note] = "note";
//array_[0, 0] = 0; //2D array
//show_message(inventory_[item.spell]);
enum player {
	move,
	sword
}

enum dir {
	right,
	up,
	left,
	down
}
//Sprite Lookup Table
sprite_[player.move, dir.right] = s_player_run_right;
sprite_[player.move, dir.up] = s_player_run_up;
sprite_[player.move, dir.left] = s_player_run_right;
sprite_[player.move, dir.down] = s_player_run_down;
//sprite_index = sprite_[player.move, dir.right];

//attack lookup table
sprite_[player.sword, dir.right] = s_player_run_right;
sprite_[player.sword, dir.up] = s_player_run_up;
sprite_[player.sword, dir.left] = s_player_run_right;
sprite_[player.sword, dir.down] = s_player_run_down;

