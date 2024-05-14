/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if( x <= 1226){
	if(instance_exists(obj_player)){
		if(obj_player.x >= x && obj_player.x <= x + 200){
			sprite_index = spr_carro_azul_parado_direita
		}else{
			sprite_index = spr_carro_azul_andando_direita
			x+=2;	
		}
	}
}else{
	instance_destroy();
}

