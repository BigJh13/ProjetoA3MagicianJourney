//event_inherited();
if global.levelup == true || obj_player.died == true || global.weapon_upgrade == true{ //pause game 4/4
	speed = 0;
	exit;
}else{
	speed = spd;
}
damage_bonus = global.sword_bonus_damage;

var _target_angle = point_direction(x, y, mouse_x, mouse_y);

image_angle += 45 * global.weapon_movement_speed;
if(image_angle >= 360){
	image_angle -= 360;
}

image_xscale = (0.2 * global.weapon_scale) * global.sword_scale;
image_yscale = (0.2 * global.weapon_scale) * global.sword_scale;

angle_bonus = (global.sword_bonus_angle + count_angle_bonus) * global.weapon_movement_speed;

angle += 15 + angle_bonus;
//angle = (angle * global.weapon_movement_speed);

try{
	x = mouse_x + lengthdir_x(distance_from_player, angle + 15);
	y = mouse_y + 0 + lengthdir_y(distance_from_player, angle + 15);
}catch(e){
	
}
