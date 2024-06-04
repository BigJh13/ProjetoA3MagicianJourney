if global.levelup == true{
	draw_set_alpha(.7);
	draw_rectangle_color(0,0,display_get_gui_width(), display_get_gui_height(), c_black, c_black, c_black, c_black, false);
	draw_set_alpha(1);
	
	var _sprw = sprite_get_width(spr_level_up_hud);
	var _sprh = sprite_get_height(spr_level_up_hud);
	var _buffer = 4; 
	var _xx = display_get_gui_width()/2;
	var _yy = display_get_gui_height()/2 - _sprh - _buffer;
	
	var _mx = device_mouse_x_to_gui(0);
	var _my = device_mouse_y_to_gui(0);
	
	for (var _i = 0; _i< upgrade_num; _i++){
		var _spry = _yy + (_sprh + _buffer) * _i;
		var _y = upgrade_list[| _i];
		var _name = upgrades_grid[# UPGRADES.NAME, _y];
		
		if point_in_rectangle(_mx, _my, _xx - _sprw/2, _spry - _sprh/2, _xx + _sprw/2, _spry + _sprh/2){
			upgrade_alpha = 1;
			upgrade_scale = 1.05;
			if(mouse_check_button_pressed(mb_left)){
				ds_grid_return_upgrade_effect(upgrades_grid, _name);
				global.levelup = false;
				exit;
			}
		}else{
			upgrade_alpha = .7;
			upgrade_scale = 1;
		}
		
		draw_sprite_ext(spr_level_up_hud, -1, _xx, _spry, upgrade_scale, upgrade_scale, 0, c_white, upgrade_alpha);
		draw_sprite(spr_upgrades, _y, _xx + 13 - _sprw/2, _spry + 1);
		
		draw_set_font(fnt_small);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_text(_xx, _spry, _name);
	}
	exit;
}

if (global.weapon_upgrade == true){
	
	draw_set_alpha(.7);
	draw_rectangle_color(0,0,display_get_gui_width(), display_get_gui_height(), c_black, c_black, c_black, c_black, false);
	draw_set_alpha(1);
	
	var _sprw = sprite_get_width(spr_level_up_hud);
	var _sprh = sprite_get_height(spr_level_up_hud);
	var _buffer = 4; 
	var _xx = display_get_gui_width()/2;
	var _yy = display_get_gui_height()/2 - _sprh - _buffer;
	
	var _mx = device_mouse_x_to_gui(0);
	var _my = device_mouse_y_to_gui(0);
	
	for (var _i = 0; _i < weapon_upgrade_num; _i++){
		var _spry = _yy + (_sprh + _buffer) * _i;
		var _y = weapon_upgrade_list[| _i];
		var _name = weapon_upgrade_grid[# WEAPON_UPGRADES.NAME, _y];
		
		if point_in_rectangle(_mx, _my, _xx - _sprw/2, _spry - _sprh/2, _xx + _sprw/2, _spry + _sprh/2){
			weapon_upgrade_alpha = 1;
			weapon_upgrade_scale = 1.05;
			if(mouse_check_button_pressed(mb_left)){
				ds_grid_return_weapon_upgrade_effect(weapon_upgrade_grid, _name);
				global.weapon_upgrade = false;
				exit;
			}
		}else{
			weapon_upgrade_alpha = .7;
			weapon_upgrade_scale = 1;
		}
		
		draw_sprite_ext(spr_level_up_hud, -1, _xx, _spry, weapon_upgrade_scale, weapon_upgrade_scale, 0, c_white, weapon_upgrade_alpha);
		draw_sprite(spr_weapons_icons, _y, _xx + 13 - _sprw/2, _spry + 1);
		
		draw_set_font(fnt_small);
		draw_set_halign(fa_left);
		draw_set_valign(fa_middle);
		draw_text(_xx, _spry, _name);
	}
	exit;
}

draw_set_font(fnt_small);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

var _xx_kills = 5;
var _yy_kills = 20;

if skull_red_eyes == true {
	draw_sprite(spr_skull_kill_counter, 1, _xx_kills, _yy_kills)
}else if skull_red_eyes == false {
	draw_sprite(spr_skull_kill_counter, 0, _xx_kills, _yy_kills)
}

draw_text(_xx_kills + 20, _yy_kills + 5, string(global.kills_counter) + " / " + string(int64(global.kills_counter_max)))

var _xx_coin = 5;
var _yy_coin = 40;

draw_sprite(spr_coin_icon, 1, _xx_coin, _yy_coin)
draw_text(_xx_coin + 20, _yy_coin + 5, string(global.money))

draw_sprite(spr_exp_hud, -1, 3, 3);
draw_sprite_ext(spr_exp_bar, -1, 4, 4, global.exp/global.exp_max, 1, 0, c_white, 1);

draw_sprite(spr_exp_hud, -1, 3, 10);

if(obj_player.player_hp > 0){
	draw_sprite_ext(spr_life_bar, -1, 4, 11, obj_player.player_hp/obj_player.player_hp_max, 1, 0, c_white, 1);

}else if obj_player.player_hp <= 0{
		
	draw_set_font(fnt_menu);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	var _xx = display_get_gui_width()/2;
	var _yy = display_get_gui_height()/2;
	
	var _mx = device_mouse_x_to_gui(0);
	var _my = device_mouse_y_to_gui(0);
	
	var _sprw = sprite_get_width(spr_button_death);
	var _sprh = sprite_get_height(spr_button_death);
	
	draw_set_alpha(.7);
	draw_rectangle_color(0,0,display_get_gui_width(), display_get_gui_height(), c_black, c_black, c_black, c_black, false);
	draw_set_alpha(1);
	
	draw_text(_xx, _yy-40, "voce pereceu");
	
	draw_set_font(fnt_menu_death);
	
	draw_sprite(spr_button_death,1,_xx-80,_yy+44);
	draw_text(_xx-80, _yy+40, "menu");
	
	draw_sprite(spr_button_death,1,_xx+80,_yy+44);
	draw_text(_xx+80, _yy+40, "renascer");
	
	//button restart
	if point_in_rectangle(_mx, _my, _xx+80 - (_sprw/2), _yy+40 - (_sprh/2), _xx+80 + (_sprw/2), _yy+40 + (_sprw/2)){
		if(mouse_check_button_pressed(mb_left)){
			room_restart();
		}
	}
	//button menu
	if point_in_rectangle(_mx, _my, _xx-80 - (_sprw/2), _yy+40 - (_sprh/2), _xx-80 + (_sprw/2), _yy+40 + (_sprw/2)){
		if(mouse_check_button_pressed(mb_left)){
			room_goto(rm_menu);
		}
	}
}
	



