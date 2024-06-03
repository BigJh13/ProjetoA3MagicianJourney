// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function scr_damage_enemies(_damage, _obj_par_enemy){
	
	var _enemy = _obj_par_enemy
	var _true_damage = (_damage - _enemy.defense)
	
	if (_true_damage < 1){
		_true_damage = 1
	} 
	_enemy.hp -= _true_damage
}
