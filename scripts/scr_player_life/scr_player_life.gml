// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function player_life(_damage){
	if global.invulnerable == false{
		obj_player.player_hp -= (_damage - obj_player.player_defense)
		global.invulnerable = true;
	}
}