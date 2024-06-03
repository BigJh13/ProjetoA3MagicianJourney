/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();

image_angle += 5;
if(image_angle >= 360){
	image_angle -= 360;
}

image_xscale = (0.2 * global.weapon_scale) * global.shield_scale;
image_yscale = (0.2 * global.weapon_scale) * global.shield_scale;

damage_bonus = global.shield_bonus_damage;

angle_bonus = (global.shield_bonus_angle + count_angle_bonus) * global.weapon_movement_speed;

angle += 5 + angle_bonus;
//angle = (angle * global.weapon_movement_speed);

x = obj_player.x + lengthdir_x(40, angle);
y = obj_player.y + 0 + lengthdir_y(40, angle);
