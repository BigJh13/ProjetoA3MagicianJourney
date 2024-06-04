if global.levelup == true || global.weapon_upgrade == true{
	exit;
}
if obj_player.died == true{ //pause game 3/4
	exit;
}

right = keyboard_check(ord("D")) or keyboard_check(vk_right);
left = keyboard_check(ord("A")) or keyboard_check(vk_left);
up = keyboard_check(ord("W")) or keyboard_check(vk_up);
down = keyboard_check(ord("S")) or keyboard_check(vk_down);

var _xx = right - left;
var _yy = down - up;

//if alarm[0] <= 0{
//	if invulnerable == true {
//	}else{
//	}
////	invulnerable = false;
//}else{
////	invulnerable = true;
//}

if _xx != 0 or _yy != 0{
	sprite_index = spr_player_walking;
	
	dir = point_direction(x, y, x + _xx, y + _yy);
	hspd = lengthdir_x(spd, dir);
	vspd = lengthdir_y(spd, dir);

	x += hspd;
	y += vspd;


}else{
	sprite_index = spr_player_idle;
}

spell_1_cd--;

if spell_1_cd <= 0{
	var _enemy = instance_nearest(x, y, obj_par_enemy);
	
	var _inst = instance_create_layer(x, y, "Instances", obj_weapon_orb_spell);
	_inst.speed = 2;
	try{
		_inst.direction = point_direction(x, y, _enemy.x, _enemy.y);
	}catch(e){
		_enemy =  instance_nearest(x, y, obj_par_enemy);
		_inst.direction = point_direction(x, y, mouse_x, mouse_y);
	}
	spell_1_cd = spell_1_timer;
}

if (instance_number(obj_weapon_shield) < 4 && global.create_shield == true ) {
	switch(instance_number(obj_weapon_shield)){
	
	case 0:
		var _shield1 = instance_create_layer(x, y, layer, obj_weapon_shield);
		_shield1.angle = 0;
		break;
		
	case 1:
		var _shield2 = instance_create_layer(x, y, layer, obj_weapon_shield);
		_shield2.angle = 90;
		_shield2.angle_bonus += 2;
		break;
		
	case 2:
		var _shield3 = instance_create_layer(x, y, layer, obj_weapon_shield);
		_shield3.angle = 180;
		_shield3.angle_bonus += 3;
		break;
		
	case 3:
		var _shield4 = instance_create_layer(x, y, layer, obj_weapon_shield);
		_shield4.angle = 270;
		_shield4.angle_bonus += 5;
		break;
	}
	global.create_shield = false;
}

if (instance_number(obj_weapon_sword) < 3 && global.create_sword == true ) {
	switch(instance_number(obj_weapon_shield)){
	
	case 0:
		var _sword1 = instance_create_layer(x, y, layer, obj_weapon_sword);
		_sword1.angle = 0;
		break;
		
	case 1:
		var _sword2 = instance_create_layer(x, y, layer, obj_weapon_sword);
		_sword2.angle = 90;
		_sword2.count_angle_bonus += 2;
		_sword2.distance_from_player += 3;

		break;
		
	case 2:
		var _sword3 = instance_create_layer(x, y, layer, obj_weapon_sword);
		_sword3.angle = 180;
		_sword3.count_angle_bonus += 3;
		_sword3.distance_from_player += 6;
		break;
	}
	global.create_sword = false;
}

if (player_hp <= 0)
{
    died = true;

}

if global.invulnerable == false && alarm[0] <= 0{
	alarm[0] = obj_player.invulnerability_frames * game_get_speed(gamespeed_fps);
	//global.invulnerable = true;
}

if alarm[0] <= 0 {
	global.invulnerable = false;
}