/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x, y-490, "Upgrades permanentes!\n100 de Ouro cada um!")

instance_create_layer(x, y-380, "Instances", obj_button_buy_damage);

instance_create_layer(x, y-280, "Instances", obj_button_buy_defense);

instance_create_layer(x, y-180, "Instances", obj_button_buy_exp_bonus);

instance_create_layer(x, y-80, "Instances", obj_button_buy_money_bonus);

instance_create_layer(x, y+20, "Instances", obj_button_buy_orb_spell_pierce);


draw_set_halign(fa_center);
draw_set_valign(fa_middle);


var _xx_coin = 830;
var _yy_coin = 200;

draw_sprite(spr_coin_icon, 1, _xx_coin, _yy_coin)
draw_text(_xx_coin + 50, _yy_coin + 5, "x  " + string(global.current_money))

	
//draw_set_alpha(.7);
//draw_rectangle_color(0,0,display_get_gui_width(), display_get_gui_height(), c_black, c_black, c_black, c_black, false);
//draw_set_alpha(1);
	
//var _sprw = sprite_get_width(spr_button);
//var _sprh = sprite_get_height(spr_button);
//var _buffer = 0; 
//var _xx = display_get_gui_width()/2;
//var _yy = display_get_gui_height()/2 - _sprh - _buffer;
	
//var _mx = device_mouse_x_to_gui(0);
//var _my = device_mouse_y_to_gui(0);
	
//for (var _i = 0; _i < itens_num; _i++){
//	var _spry = _yy + (_sprh + _buffer) * _i;
//	var _spry2 = _yy + ( _buffer)*_i;
//	var _y = shop_list[| _i];
//	var _name = shop_grid[# SHOP.NAME, _y];
		
//	if point_in_rectangle(_mx, _my, _xx-250, _spry+_sprw/2, _xx-65, _spry-_sprw/2){
//		item_alpha = 1;
//		item_scale = 1.05;
//		if(mouse_check_button_pressed(mb_left)){
//			ds_grid_return_shop_effect(shop_grid, _name);
//			exit;
//		}
//	}else{
//		item_alpha = .7;
//		item_scale = 1;
//	}
	
//	draw_sprite_ext(spr_button, -1, _xx + 85, _spry, item_scale, item_scale, 0, c_white, item_alpha);
		
//	draw_set_font(fnt_menu);
//	draw_set_halign(fa_left);
//	draw_set_valign(fa_middle);
//	draw_text(_xx, _spry, _name);
//}