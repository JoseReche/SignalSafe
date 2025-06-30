 /// Step Event obj_carro_direito
// Pega a instância do player mais próxima
var player = instance_nearest(x, y, obj_player);

if (!global.jogoPausado) {

    // Limita a área em que o carro fica ativo (exemplo)
    if (x > -200 && x < 2000) {

        if (instance_exists(obj_player)) {

            // Se carro não for bom (você usa isso pra algo?)
            if (!carroBom) {
                // Se tem outro carro na frente, para
                if (place_meeting(x + 50, y - 10, obj_carro_direito)) {
                    sprite_index = spr_carro_azul_parado_direita;
                    speed = 0;
                // Se o player está perto (na frente, +-40 no eixo y) o carro liga alerta e para, além de mandar player pra calçada
                } else if(!global.semafaro && place_meeting(x , y , obj_semafaro)) {
                    sprite_index = spr_carro_azul_andando_direita;
                    speed = velocidade;
				}else if(!global.semafaro && place_meeting(x + 50, y - 10, obj_semafaro)) {
                    sprite_index = spr_carro_azul_parado_direita;
                    speed = 0;
				}else if (!global.passareala&&(place_meeting(x + 50, y+2 , obj_player) || place_meeting(x + 50, y-2, obj_player))) {
                    sprite_index = spr_carro_azul_parado_direita_alerta;
					speed = 0;
					player.mover_para_calcada = true;	
					if(!audio_is_playing(Busina))audio_play_sound(Busina, 1, false);
					if(alarm[1]<=0&&global.ambiente>0){
						global.hotbar_spr[global.ambiente] = 0
						global.ambiente--
						alarm[1]=200
					}else if(global.ambiente==0){
						global.hotbar_spr[0] = 1
					}
                } else {
                    sprite_index = spr_carro_azul_andando_direita;
                    speed = velocidade;
                }

            } else { // Se carroBom == true

                // Se tem carro na frente, para
                if (place_meeting(x + 50, y - 10, obj_carro_direito)) {
                    sprite_index = spr_carro_azul_parado_direita;
                    speed = 0;

                // Se player está perto, liga alerta e para (não manda para calçada nesse caso)
                }else if(!global.semafaro && place_meeting(x , y , obj_semafaro)) {
                    sprite_index = spr_carro_azul_andando_direita;
                    speed = velocidade;
				}else if(!global.semafaro && place_meeting(x + 50, y - 10, obj_semafaro)) {
                    sprite_index = spr_carro_azul_parado_direita;
                    speed = 0;
				}else if (place_meeting(x, y, obj_faixa)){
					sprite_index = spr_carro_azul_andando_direita;
                    speed = velocidade;
					if(!global.passareala &&(place_meeting(x+10,y-10,obj_player)||place_meeting(x-10,y+10,obj_player))){		
						player.mover_para_calcada = true;
						if(!audio_is_playing(Busina))audio_play_sound(Busina, 1, false);
						if(alarm[1]<=0&&global.ambiente>0){
							global.hotbar_spr[global.ambiente] = 0
							global.ambiente--
							alarm[1]=200
						}else if(global.ambiente==0){
							global.hotbar_spr[0] = 1
						}
					}
				} else if (!global.passareala&&((place_meeting(x+50, y, obj_faixa)&&global.playerFaixa))) {
					sprite_index = spr_carro_azul_parado_direita_alerta;
                    speed = 0;
                } else if (place_meeting(x, y, obj_faixa)){
					sprite_index = spr_carro_azul_andando_direita;
                    speed = velocidade;
					if(place_meeting(x+10,y-10,obj_player)||place_meeting(x-10,y+10,obj_player)){
						player.mover_para_calcada = true;
						if(!audio_is_playing(Busina))audio_play_sound(Busina, 1, false);
						if(alarm[1]<=0&&global.ambiente>0){
							global.hotbar_spr[global.ambiente] = 0
							global.ambiente--
							alarm[1]=200
						}else if(global.ambiente==0){
							global.hotbar_spr[0] = 1
						}
					}
				} else if (place_meeting(x+50, y, obj_faixa)&&global.playerFaixa ) {
					sprite_index = spr_carro_azul_parado_direita_alerta;
                    speed = 0;

                // Se o player está na faixa, para o carro
                 } else {
                    sprite_index = spr_carro_azul_andando_direita;
                    speed = velocidade;
                }

            }

        }
    } else {
        instance_destroy();
    }

}

