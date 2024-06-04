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


