/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();

spell_1_cd--;

if (point_distance(obj_player.x, obj_player.y, x, y) < 50){
	walk = false;
	
	if spell_1_cd <= 0{
		
		var _inst = instance_create_layer(x, y, "Instances", obj_enemy_orb_spell);
		
		_inst.speed = 2;
		
		if(obj_player.player_hp > 0){
			try{
				_inst.direction = point_direction(x, y, obj_player.x, obj_player.y);
			}catch(e){
			}
		}
		spell_1_cd = spell_1_timer;
	}
	
}else{
	walk = true;
}

