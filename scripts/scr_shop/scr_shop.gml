// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function ds_grid_shop_add_row(){
	var _grid = argument[0];
	ds_grid_resize(_grid,ds_grid_width(_grid),ds_grid_height(_grid)+1);
	return(ds_grid_height(_grid)-1);	
}

function ds_grid_add_shop(_name, _effect){
	var _grid = shop_grid;
	var _y = ds_grid_add_row(_grid);
 
	_grid[# 0, _y] = _name;
	_grid[# 1, _y] = _effect;
}

function shop_damage(_grid){
	var _effect = _grid[# 1, 0];
	global.shop_damage += _effect
}


function shop_defense(_grid){
	var _effect = _grid[# 1, 1];
	global.shop_defense += _effect
}


function shop_exp_bonus(_grid){
	var _effect = _grid[# 1, 2];
	global.shop_exp_bonus += _effect
}


function shop_money_bonus(_grid){
	var _effect = _grid[# 1, 3];
	global.shop_money_bonus += _effect
}


function shop_orb_spell_pierce(_grid){
	var _effect = _grid[# 1, 4];
	global.shop_orb_spell_pierce += _effect
}




