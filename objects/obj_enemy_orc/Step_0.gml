/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();

var _screen_side_left

if x >= obj_player.x {
	_screen_side_left = true; 
}else if x < obj_player.x {
	_screen_side_left = false;
}

if(_screen_side_left)
{
   sprite_index = spr_enemy_orc;
   image_xscale = -1;
}
if (_screen_side_left)
{
   sprite_index = spr_enemy_orc;
   image_xscale = 1;
}