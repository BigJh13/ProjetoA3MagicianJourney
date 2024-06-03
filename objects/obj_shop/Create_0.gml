/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//upgrade_damage_button = obj_button_buy
//upgrade_damage_button.button_text = "Dano"
//upgrade_damage_button.upgrade_name = "Dano"

item_alpha = 0.7;
item_scale = 1;

itens_num = 5;

shop_list = ds_list_create();
ds_list_add(shop_list, 0);
ds_list_add(shop_list, 1);
ds_list_add(shop_list, 2); 
ds_list_add(shop_list, 3); 
ds_list_add(shop_list, 4); 

enum SHOP{
	NAME,
	EFFECT,
	LENGTH
}
// name | effect force
shop_grid = ds_grid_create(SHOP.LENGTH, 0);
ds_grid_add_shop("Dano",			0.1 );
ds_grid_add_shop("Defesa",			2   );
ds_grid_add_shop("ExpBonus",		1   );
ds_grid_add_shop("OuroBonus",		1   );
ds_grid_add_shop("OrbSpellPierce",	1   );





