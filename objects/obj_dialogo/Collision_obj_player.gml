//dsds
// Se estiver próximo e não tiver pressionado F, mostra o diálogo

if (global.fala == "") {
    switch(npc){
        case "Mãe":
            if (global.hotbar_spr[0] == 2||global.objetivo==2){
                global.fala = "MUITO OBRIGADO FILHO POR TER IDO ATÉ LÁ, FICO FELIZ POR TER APRENDIDO A ANDAR NO TRÂNSITO.";	
                global.objetivo = 2;
				global.hotbar_spr[0] = 0
				global.hotbar_spr[1] = 0
				global.hotbar_spr[2] = 0
				global.hotbar_spr[3] = 0
				global.hotbar_spr[4] = 0
				global.hotbar_spr[5] = 0
				global.objetivo=2
				if(!fala1){
					if (!audio_is_playing(Primeira_fala_mae))audio_play_sound(Primeira_fala_mae, 1, false);
					if (audio_is_playing(Segunda_fala_mae))audio_stop_sound(Segunda_fala_mae);
					fala1=true
					alarm[1] = 800
				}
					alarm[2] = 300
            } else if (global.hotbar_spr[0] == 0 && global.objetivo == 1){
				global.fala = "Teste"
			}else if (global.hotbar_spr[0] == 0){
                global.fala = "FILHO, AGORA QUE VOCÊ ESTÁ CRESCIDO, QUERO PEDIR UM FAVOR PARA VOCÊ. PRECISO QUE VÁ AO MERCADINHO E COMPRE UM ALFACE, UMA BATATA, UMA CARNE, UMA TANGERINA E UM ABACAXI PARA O ALMOÇO HOJE.";
				if(!fala2){
					if (!audio_is_playing(Segunda_fala_mae))audio_play_sound(Segunda_fala_mae, 1, false);
					if (audio_is_playing(Primeira_fala_mae))audio_stop_sound(Primeira_fala_mae);
					fala2=true
					alarm[1] = 800
				}
				instance_deactivate_layer("moedas_mae")
                instance_activate_layer("moedas_porta")
            }
            global.pessoa_conversa = 0;
				
        break;
		case "Mãe8":
			if(global.objetivo==0)global.objetivo = 1;
		break
        case "Atendente":
             if (global.hotbar_spr[0] == 1&&global.hotbar_spr[1] !=0&&global.hotbar_spr[2] !=0&&global.hotbar_spr[3] !=0&&global.hotbar_spr[4] !=0&&global.hotbar_spr[5] !=0){
			    global.fala = "Muito obrigado! Volte sempre, querido.";
				if(!fala1){
					if(!audio_is_playing(Segunda_fala_atendente))audio_play_sound(Segunda_fala_atendente, 1, false);
					if (audio_is_playing(Primeira_fala_atendente))audio_stop_sound(Primeira_fala_atendente);
					fala1=true
					alarm[1] = 800
				}
			}
            global.pessoa_conversa = 1;
        break;
		case "Caixa":
			if(global.hotbar_spr[0]==1&&(global.hotbar_spr[1]!=0||global.hotbar_spr[2]!=0||global.hotbar_spr[3]!=0||global.hotbar_spr[4]!=0||global.hotbar_spr[5]!=0)){
				global.fala = "Ei! Você esqueceu de pagar!";
				if(!fala1){
					if(!audio_is_playing(Primeira_fala_atendente))audio_play_sound(Primeira_fala_atendente, 1, false);
					if (audio_is_playing(Segunda_fala_atendente))audio_stop_sound(Segunda_fala_atendente);
					fala1=true
					alarm[1] = 800
				}
			}
		break;
		
		case "Guarda1":
			global.fala = "OI! FIQUE ATENTO À RUA E AGUARDE ATÉ QUE OS CARROS PAREM E ACENDAM AS LUZES AMARELAS PARA PASSAR.";
			global.pessoa_conversa = 4;
			if(!fala1){
					if(!audio_is_playing(Fala_guarda_1))audio_play_sound(Fala_guarda_1, 1, false);
					fala1=true
					alarm[1] = 800
				}
		break;
		
		case "Guarda2":
			if(!global.semafaro){
				global.fala = "PODE PASSAR CRIANÇA MAS NÃO DEMORE MUITO NÃO COSIGO SEGURALOS POR MUITO TEMPO ";
				obj_guarda.image_index = 1
				if(!fala1){
					if(!audio_is_playing(segunda_fala_guarda_2))audio_play_sound(segunda_fala_guarda_2, 1, false);
					if (audio_is_playing(Primeira_fala_guarda_2))audio_stop_sound(Primeira_fala_guarda_2);
					fala1=true
					alarm[1] = 800
				}
				
			}else{
				global.fala = "OI! FIQUE ATENTO ASSIM QUE EU DISSER VOCÊ PODE PASSAR.";
				obj_guarda.image_index = 0
				if(!fala2){
					if (!audio_is_playing(Primeira_fala_guarda_2))audio_play_sound(Primeira_fala_guarda_2, 1, false);
					if (audio_is_playing(segunda_fala_guarda_2))audio_stop_sound(segunda_fala_guarda_2);
					fala1=true
					alarm[1] = 800
				}
			}
			global.pessoa_conversa = 4;
		break;
    }
}


