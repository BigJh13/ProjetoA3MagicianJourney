event_inherited();
if global.levelup == true || global.weapon_upgrade == true{
alarm[1] += 1	
}
damage_bonus = global.shield_bonus_damage

if alarm[0] <= 0{
	instance_create_layer(x, y, "Instances", obj_weapon_orb_spell_vfx);
	alarm[0] = 3;
}
if alarm[1] <= 0{
	instance_destroy();
}