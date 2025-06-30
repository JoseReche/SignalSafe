/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
switch (itens) { 
	case "sacola":
			if(global.hotbar_spr[0] == 0){
				global.hotbar_spr[0] = 1
				instance_destroy()
			}
        break;
	case "sacola_cheia":
			if(global.hotbar_spr[0]==1&&global.hotbar_spr[1]!=0&&global.hotbar_spr[2]!=0&&global.hotbar_spr[3]!=0&&global.hotbar_spr[4]!=0&&global.hotbar_spr[5]!=0){
				global.hotbar_spr[0] = 2
				global.ambiente = 6
			}
			
        break;
	case "alho_poro":
		if(global.hotbar_spr[1] == 0){
			global.hotbar_spr[1] = 3
			instance_destroy()
			}		
        break;
	case "batata":
			if(global.hotbar_spr[2] == 0){
			global.hotbar_spr[2] = 4
			instance_destroy()
			}
        break;
	case "carne":
			if(global.hotbar_spr[3] == 0){
			global.hotbar_spr[3] = 5
			instance_destroy()
			}
        break;
	case "tangerina":
		if(global.hotbar_spr[4] == 0){
		global.hotbar_spr[4] = 6
		instance_destroy()
		}
    break;
	case "abacaxi":
		if(global.hotbar_spr[5] == 0){
		global.hotbar_spr[5] = 7
		instance_destroy()
		}
    break;
}
