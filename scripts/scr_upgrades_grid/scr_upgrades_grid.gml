// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function ds_grid_add_row(){
	var _grid = argument[0];
	ds_grid_resize(_grid,ds_grid_width(_grid),ds_grid_height(_grid)+1);
	return(ds_grid_height(_grid)-1);	
}
 
function ds_grid_add_upgrade(_name, _effect, _max_quantity, _current_quantity){
	var _grid = upgrades_grid;
	var _y = ds_grid_add_row(_grid);
 
	_grid[# 0, _y] = _name;
	_grid[# 1, _y] = _effect;
	_grid[# 2, _y] = _max_quantity;
	_grid[# 3, _y] = _current_quantity;
}

function ds_grid_return_upgrade_status(_grid, _name){
	var _upgrade_count = 0;
	while (_grid.ds_grid_width(_upgrade_count)>_upgrade_count-1) {
		if ds_grid_value_exists(_grid, 0, _upgrade_count, 0, _upgrade_count, _name){
			var _valor_upgrade = ds_grid_get(_grid, _upgrade_count, 1);
		}
	}
}

function ds_grid_return_upgrade_effect(_grid, _name){
	
	var _name_y = ds_grid_value_y(_grid, 0, 0, 0, ds_grid_height(_grid), _name);
	var _effect = _grid[# 1, _name_y];
	var _max_quantity = _grid[# 2, _name_y ];
	var _current_quantity = _grid[# 3, _name_y];
	
	switch (_name){
		case "Orbe":
		 global.weapon_scale -= _effect;
		 _grid[# 3, _name_y] = _current_quantity + 1
		break;
		
		case "Pena":
		 obj_player.player_defense += _effect;
		 _grid[# 3, _name_y] = _current_quantity + 1
		break;
		
		case "Ima":
		 obj_player.collect_range += _effect;
		 _grid[# 3, _name_y] = _current_quantity + 1
		break;
		
		case "Estrela":
		 obj_player.player_hp_max += _effect;
		 _grid[# 3, _name_y] = _current_quantity + 1
		break;
		
		case "Shuriken":
		 obj_player.damage_multiplayer += _effect;
		 _grid[# 3, _name_y] = _current_quantity + 1
		break;
		
		case "Sapo":
		 obj_control.upgrade_num += _effect;
		 _grid[# 3, _name_y] = _current_quantity + 1
		break;
		
		case "Bumerangue":
		 global.weapon_movement_speed += _effect;
		 _grid[# 3, _name_y] = _current_quantity + 1
		break;
	}
}




