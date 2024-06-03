randomize();

global.exp = 0;
global.exp_bonus = 0 + global.shop_exp_bonus;
global.exp_max = 100;

global.money = 0;
global.money_bonus = 0 + global.shop_money_bonus;

//bonus xp and money timer
alarm[2] = 5 * game_get_speed(gamespeed_fps);
	
global.weapon_level = 0;
global.level = 1;

global.levelup = false;
global.weapon_upgrade = false;

global.invulnerable = false;

global.weapon_scale = 1;
global.weapon_movement_speed = 1;

global.have_shield = false;
global.have_sword = false;
global.have_orb_spell = true;

global.shield_level = 0;
global.sword_level = 0;
global.orb_spell_level = 0;


timer_to_increase_spawn = 900;
alarm[1] = timer_to_increase_spawn;
spawn_timer = 2 * game_get_speed(gamespeed_fps);

upgrade_num = 3;
weapon_upgrade_num = 3;

upgrade_alpha = 1;
upgrade_scale = 1;

weapon_upgrade_alpha = 1;
weapon_upgrade_scale = 1;

global.shield_bonus_damage = 0;
global.sword_bonus_damage = 0;
global.orb_spell_bonus_damage = 0;

global.kills_counter = 0;
global.kills_counter_max = 20;

global.shield_bonus_angle = 0;
global.sword_bonus_angle = 0;
global.orb_spell_bonus_velocity = 0;

global.create_shield = false;
global.create_sword = false;
global.orb_spell_amount = 1;

global.orb_spell_pierce = 10 + global.shop_orb_spell_pierce;

global.shield_scale = 1;
global.sword_scale = 1;

upgrade_list = [];
weapon_upgrade_list = ds_list_create();
ds_list_add(weapon_upgrade_list, 0);
ds_list_add(weapon_upgrade_list, 1);
ds_list_add(weapon_upgrade_list, 2); 

display_set_gui_size(320, 180);

enum UPGRADES{
	NAME,
	EFFECT,
	MAX_QUANTITY,
	CURRENT_EFFECT,
	LENGTH
}
// name | effect force | max quantity | current quantity
upgrades_grid = ds_grid_create(UPGRADES.LENGTH, 0);
ds_grid_add_upgrade("Orbe",				0.1, 3, 0);
ds_grid_add_upgrade("Pena",				3,   5, 0);
ds_grid_add_upgrade("Ima",				20,  5, 0);
ds_grid_add_upgrade("Estrela",			20,  5, 0);
ds_grid_add_upgrade("Shuriken",			0.1, 3, 0);
ds_grid_add_upgrade("Sapo",				1,   1, 0);
ds_grid_add_upgrade("Bumerangue",		0.1, 3, 0);

enum WEAPON_UPGRADES{
	NAME,
	LEVEL1,
	LEVEL2,
	LEVEL3,
	LEVEL4,
	LEVEL5,
	LEVEL6,
	LEVEL7,
	LEVEL8,
	LEVEL9,
	LEVEL10,
	LENGTH
}
weapon_upgrade_grid = ds_grid_create(WEAPON_UPGRADES.LENGTH, 0);

// upgrades: desbloqueio, amount, damage, size, velocidade, pierce
//Shield upgrades per level
//1 -> desbloqueio, 2 -> +dano, 3 -> +velocidade, 4 -> +1 shield, 5 -> +velocidade, 6 -> +dano, 7 -> +1 shield, 8 -> +size, 9 -> +size, 10 -> +1 shield
ds_grid_add_weapon_upgrade("Shield",	1, 5, 5, 1, 5, 5, 1, 5, 5, 1);

//OrbSpell upgrades per level
//1 -> +dano, 2 -> +velocidade, 3 -> +1 orb per shot, 4 -> +dano, 5 -> +pierce, 6 -> +dano, 7 -> +1 orb per shot, 8 -> +velocidade, 9 -> +1 orb per shot, 10 -> +pierce 
ds_grid_add_weapon_upgrade("OrbSpell",	5, 0.5, 1, 5, 1, 5, 1, 1, 1, 1);

//Sword upgrades per level
//1 -> desbloqueio, 2 -> +size, 3 -> +dano, 4 -> +velocidade, 5 -> +1 sword, 6 -> +size, 7 -> +velocidade, 8 -> +size, 9 -> +dano, 10 -> +1 sword 
ds_grid_add_weapon_upgrade("Sword",		1, 3, 0.2, 5, 1, 0.5, 5, 0.5, 0.3, 1);
