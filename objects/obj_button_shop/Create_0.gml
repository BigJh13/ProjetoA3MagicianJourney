/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(instance_exists(obj_bought_shop_itens)){
}else{
	instance_create_layer(room_width/2, room_height - 100, "Instances", obj_bought_shop_itens);
}
