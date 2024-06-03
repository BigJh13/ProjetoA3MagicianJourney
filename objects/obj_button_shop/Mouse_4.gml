/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();

if(instance_exists(obj_shop)){
	instance_destroy(obj_par_button_buy)
	instance_destroy(obj_shop);
}else{
	instance_create_layer(room_width/2, room_height - 100, "Instances", obj_shop);
}
