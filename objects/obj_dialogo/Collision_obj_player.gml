    // Se estiver próximo e não tiver pressionado F, mostra o diálogo
if (global.fala == "") {
    switch(npc){
        case "Mãe":
            if (obj_camera.hotbar_spr[0] == 2){
                global.fala = "MUITO OBRIGADO FILHO POR TER IDO ATÉ LÁ, FICO FELIZ POR TER APRENDIDO A ANDAR NO TRÂNSITO.";	
                obj_camera.hotbar_spr[0] = 0;
                global.objetivo = 2;
            } else if (obj_camera.hotbar_spr[0] == 0){
                global.fala = "FILHO, AGORA QUE VOCÊ ESTÁ CRESCIDO, QUERO PEDIR UM FAVOR PARA VOCÊ. PRECISO QUE VÁ AO MERCADINHO E COMPRE UM ALFACE, UMA BATATA E CARNE PARA O ALMOÇO HOJE.";
                global.objetivo = 1;
            }
            global.pessoa_conversa = 0;
				
            if(keyboard_check(ord("F"))){
                instance_deactivate_layer("moedas_mae")
                instance_activate_layer("moedas_porta")
            }
        break;

        case "Caixa":
            if(obj_camera.hotbar_spr[0] != 2){
                global.fala = "NÃO SAIA SEM PAGAR.";
            } else {
                global.fala = "TENHA UM BOM DIA, MENINO.";
            }
            global.pessoa_conversa = 1;
        break;

        case "Objetivo":
            if(global.objetivo == 0){
                global.fala = "FILHO, EU PRECISO FALAR COM VOCÊ. PODE VIR AQUI NA COZINHA. *EU DEVERIA FALAR COM A MAMÃE PRIMEIRO*";
            } else {
                global.fala = "";
            }
            global.pessoa_conversa = 0;
        break;

        case "Guarda2":
            
        break;
			
        case "Guarda":
            global.fala = "OI! FIQUE ATENTO À RUA E AGUARDE ATÉ QUE OS CARROS PAREM E ACENDAM AS LUZES AMARELAS PARA PASSAR.";
        break;
    }
    if(global.pessoa_conversa<2)obj_player.sprite_index = spr_player_parado_baixo
}

// Se o jogador apertar F, limpa o diálogo
if (keyboard_check_pressed(ord("F"))) {
    global.fala = "";
    proximo = false; // só vai mostrar o diálogo de novo se sair e voltar
}

