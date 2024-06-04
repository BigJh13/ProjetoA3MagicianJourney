/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
right = -1;
up = -1;
left = 1;
down = 1;

hspd = -1;
vspd = -1;
spd = 1;
dir = -1;

spell_1_timer = 60;
spell_1_cd = spell_1_timer;

// Player status
//health
player_hp = 100;
player_hp_max = 100;
player_defense = 1;

//invulnerability
invulnerability_frames = 2;
alarm[0] = 0;
recently_hit = false;
recentily_hit_blend = 0;

//other status
damage_multiplayer = 1 + global.shop_damage;
collect_range = 20;
died = false;