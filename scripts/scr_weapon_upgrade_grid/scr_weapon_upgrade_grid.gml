// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function ds_weapon_grid_add_row(){
	var _grid = argument[0];
	ds_grid_resize(_grid,ds_grid_width(_grid),ds_grid_height(_grid)+1);
	return(ds_grid_height(_grid)-1);	
}
function ds_grid_add_weapon_upgrade(_name, _level1, _level2, _level3, _level4, _level5, _level6, _level7, _level8, _level9, _level10){
	var _grid = weapon_upgrade_grid;
	var _y = ds_grid_add_row(_grid);
 
	_grid[# 0, _y] = _name;
	_grid[# 1, _y] = _level1;
	_grid[# 2, _y] = _level2;
	_grid[# 3, _y] = _level3;
	_grid[# 4, _y] = _level4;
	_grid[# 5, _y] = _level5;
	_grid[# 6, _y] = _level6;
	_grid[# 7, _y] = _level7;
	_grid[# 8, _y] = _level8;
	_grid[# 9, _y] = _level9;
	_grid[# 10, _y] = _level10;
}


function ds_grid_return_weapon_upgrade_effect(_grid, _name){
	
	var _name_y = ds_grid_value_y(_grid, 0, 0, 0, ds_grid_height(_grid), _name);
	var _upgrade_effect = _grid[# 1, _name_y];
	
	switch (_name){
		case "Shield":
		level_up_weapon(1);
		var _current_shield_level = _grid[# global.shield_level, _name_y];
			switch(global.shield_level){
				
				case 1:
				global.have_shield = true;
				global.create_shield = true;
				
				break;
				
				case 2:
				global.shield_bonus_damage += _current_shield_level;
				
				break;
				
				case 3:
				global.shield_bonus_angle += _current_shield_level;
				
				break;
				
				case 4:
				global.create_shield = true;
				
				break;
				
				case 5:
				global.shield_bonus_angle += _current_shield_level;
				
				break;
				
				case 6:
				global.shield_bonus_damage += _current_shield_level;
				
				break;
				
				case 7:
				global.create_shield = true;
				
				break;
				
				case 8:
				global.shield_scale += _current_shield_level;
				
				break;
				
				case 9:
				global.shield_scale += _current_shield_level;
				
				break;
				
				case 10:
				global.create_shield = true;
				
				break;
			}
			break;
		
		case "OrbSpell":
		level_up_weapon(3);
		var _current_orb_spell_level = _grid[# global.orb_spell_level, _name_y];
		
			switch(global.orb_spell_level){
				
				case 1:
				global.have_orb_spell = true;
				global.orb_spell_bonus_damage += _current_orb_spell_level;
				
				break;
				
				case 2:
				global.orb_spell_bonus_velocity += _current_orb_spell_level;
				
				break;
				
				case 3:
				global.orb_spell_amount += _current_orb_spell_level;
				
				break;
				
				case 4:
				global.orb_spell_bonus_damage += _current_orb_spell_level;
				
				break;
				
				case 5:
				global.orb_spell_pierce += _current_orb_spell_level;
				
				break;
				
				case 6:
				global.orb_spell_bonus_damage += _current_orb_spell_level;
				
				break;
				
				case 7:
				global.orb_spell_amount += _current_orb_spell_level;
				
				break;
				
				case 8:
				global.orb_spell_bonus_velocity += _current_orb_spell_level;
				
				break;
				
				case 9:
				global.orb_spell_amount += _current_orb_spell_level;
				
				break;
				
				case 10:
				global.orb_spell_pierce += _current_orb_spell_level;
				
				break;
			}
			break;
		
		case "Sword":
		level_up_weapon(3);
		var _current_sword_level = _grid[# global.sword_level, _name_y];
		
//Sword upgrades per level
//1 -> desbloqueio, 2 -> +size, 3 -> +dano, 4 -> +velocidade, 5 -> +1 sword, 6 -> +size, 7 -> +velocidade, 8 -> +size, 9 -> +dano, 10 -> +1 sword
			switch(global.sword_level){
				
				case 1:
				global.have_sword = true;
				global.create_sword = true;
				
				break;
				
				case 2:
				global.sword_scale += _current_sword_level;
				
				break;
				
				case 3:
				global.sword_bonus_damage += _current_sword_level;
				
				break;
				
				case 4:
				global.sword_bonus_angle += _current_sword_level;
				
				break;
				
				case 5:
				global.create_sword = true;
				
				break;
				
				case 6:
				global.sword_scale += _current_sword_level;
				
				break;
				
				case 7:
				global.sword_bonus_angle += _current_sword_level;
				
				break;
				
				case 8:
				global.sword_scale += _current_sword_level;
				
				break;
				
				case 9:
				global.sword_bonus_damage += _current_sword_level;
				
				break;
				
				case 10:
				global.create_sword = true;
				
				break;
			}
			break;
	}
}

function level_up_weapon(_weapon){
	global.weapon_level += 1
	switch(_weapon){
		case 1:
		global.shield_level += 1;
		break;
		
		case 2:
		global.orb_spell_level += 1;
		break;
		
		case 3:
		global.sword_level += 1;
		break;
	}
	
}


