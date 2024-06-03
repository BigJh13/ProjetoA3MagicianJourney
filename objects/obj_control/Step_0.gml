if (global.levelup == true || obj_player.died == true)|| global.weapon_upgrade == true{ //pause game 1/4
	alarm[0]++;
	if keyboard_check_pressed(vk_enter){
		global.levelup = false;
	}
	exit;
}

if alarm[0] <= 0{
	
	var _side = irandom(1);
	
	var _xx = 0;
	var _yy = 0;
	
	if _side == 0 {
		_xx = irandom_range(global.cmx, global.cmx + global.cmw);
		_yy = choose(global.cmy - 16, global.cmy +global.cmh + 16);
		
	}if _side == 1 {
		_xx = choose(global.cmx - 16, global.cmx + global.cmw + 16);
		_yy = irandom_range(global.cmy, global.cmy + global.cmh);
	
	}
		
	//level 5  -> 1-7 = slime, 8-10 orc
	//level 10 -> 1-3 = slime, 4-8 orc, 9-10 skeleton
	//level 15 -> 1 = slime, 2-7 orc, 8-10 skeleton
	var _enemy_selector =  irandom_range(1, 10);
	
	if(global.level <=5){
		
		if(_enemy_selector <= 7){
			instance_create_layer(_xx, _yy, "Instances", obj_enemy_slime);
		}
		if(_enemy_selector > 7){
			instance_create_layer(_xx, _yy, "Instances", obj_enemy_orc);
		}
		
	}else if(global.level <= 10 && global.level >= 6){
		
		if(_enemy_selector <= 3 && _enemy_selector >= 1){
			instance_create_layer(_xx, _yy, "Instances", obj_enemy_slime);
		}
		if(_enemy_selector <= 4 && _enemy_selector >= 8){
			instance_create_layer(_xx, _yy, "Instances", obj_enemy_orc);
		}
		if(_enemy_selector >= 9){
			instance_create_layer(_xx, _yy, "Instances", obj_enemy_flying_skull);
		}
		
	}else if(global.level > 10){
		
		if(_enemy_selector == 1){
			instance_create_layer(_xx, _yy, "Instances", obj_enemy_slime);
		}
		if(_enemy_selector <= 2 && _enemy_selector >= 7){
			instance_create_layer(_xx, _yy, "Instances", obj_enemy_orc);
		}
		if(_enemy_selector >= 8){
			instance_create_layer(_xx, _yy, "Instances", obj_enemy_flying_skull);
		}
	}
	
	alarm[0] = spawn_timer;
	if alarm[1] <= 0 && spawn_timer >= 30{
		spawn_timer--;
		alarm[1] = timer_to_increase_spawn;
	}
}

if (global.kills_counter >= global.kills_counter_max) {
	global.weapon_level++;
	global.kills_counter -= global.kills_counter_max;
	
	global.kills_counter_max += .20 * global.kills_counter_max;
	
	global.weapon_upgrade = true;
}
if (alarm[2] <= 0) {
	global.exp_bonus += irandom_range(1, 3);
	global.money_bonus += irandom_range(1, 4);
	alarm[2] = 5 * game_get_speed(gamespeed_fps);
}
if global.exp >= global.exp_max {
	global.level++;
	global.exp = global.exp - global.exp_max;
	
	global.exp_max += .15* global.exp_max;
	
	global.levelup = true;
	
	upgrade_list = ds_list_create();
	
	repeat(upgrade_num){
		var _upgrade = irandom(ds_grid_height(upgrades_grid)-1);
		
		while (!ds_list_find_index(upgrade_list,_upgrade)) && !(upgrades_grid[# 3, _upgrade]<upgrades_grid[# 2, _upgrade]){
			
			 _upgrade = irandom(ds_grid_height(upgrades_grid)-1);
		}
		ds_list_add(upgrade_list, _upgrade);
	}
}
