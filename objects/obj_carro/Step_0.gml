/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if( x <= 2000 || x >= -200){
	if(instance_exists(obj_player)){
		if(carro == 2){
			if(place_meeting(x - 50, y + 10, obj_player) || place_meeting(x - 50, y - 10, obj_player) || place_meeting(x - 50, y - 10, obj_carro)){
				sprite_index = spr_carro_azul_parado_direita
				speed = 0
			}else{
				sprite_index = spr_carro_azul_andando_direita
				speed = -2;
			}
		}else if(carro == 1){
			if(place_meeting(x + 50, y + 10, obj_player) || place_meeting(x + 50, y - 10, obj_player) || place_meeting(x + 50, y - 10, obj_carro)){
				sprite_index = spr_carro_azul_parado_direita
				speed = 0
			}else{
				sprite_index = spr_carro_azul_andando_direita
				speed = 2;
			}
		}
	}
}else{
	instance_destroy();
}

