// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function scr_weapon_damage_calculation(_weapon){
	
	var _damage = (_weapon.damage + _weapon.damage_bonus) * (obj_player.damage_multiplayer)
	
	return _damage
}
