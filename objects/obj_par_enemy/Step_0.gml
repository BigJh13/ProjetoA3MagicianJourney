if global.levelup == true || obj_player.died == true || global.weapon_upgrade == true{ //pause game 2/4
	exit;
}

depth = -y;

var _border = 64;

if y < global.cmy - _border{
	y = global.cmy + global.cmh + _border;
}

if y > global.cmy + global.cmh + _border{
	y = global.cmy - _border;
}

if x < global.cmx - _border{
	x = global.cmx + global.cmw + _border;
}

if x > global.cmx + global.cmw + _border{
	x = global.cmx - _border;
}

if (walk == true){
	dir = point_direction(x, y, obj_player.x, obj_player.y);
	hspd = lengthdir_x(spd, dir);
	vspd = lengthdir_y(spd, dir);

	x += hspd;
	y += vspd;
}

if hp <= 0{
	repeat(3){
		var _xx_exp = irandom_range(-10, 10);
		var _yy_exp = irandom_range(-10, 10);
		
		instance_create_layer(x+_xx_exp, y+_yy_exp, "Instances", obj_exp);
	}

//coin drop logic
	
	var _drop_times = 0;
	var _coin_drop_chance = irandom_range(4, 10);
		
	if(_coin_drop_chance > 4) && (_coin_drop_chance < 8){
		_drop_times = 1;
	}
		
	if(_coin_drop_chance > 7) && (_coin_drop_chance < 10){
		_drop_times = 2;
	}
		
	if(_coin_drop_chance > 9){
		_drop_times = 3
	}
	if(_drop_times > 0){
		repeat(_drop_times){
		
			var _xx_coin = irandom_range(-10, 10);
			var _yy_coin = irandom_range(-10, 10);
		
			instance_create_layer(x+_xx_coin, y+_yy_coin, "Instances", obj_coin);
		}
	}
	if(obj_player.player_hp < (obj_player.player_hp_max * 0.8)){
		obj_player.player_hp += 2;
	}
	global.kills_counter += 1;
	instance_destroy();
}
hp_increase_timer--;

if(hp_increase_timer <= 0){
	hp_bonus += 5;
	hp_increase_timer = 4 * game_get_speed(gamespeed_fps);
}


