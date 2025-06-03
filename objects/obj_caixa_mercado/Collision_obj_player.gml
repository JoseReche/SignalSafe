/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
switch (itens) {
	case "sacola":
			obj_camera.hotbar_spr[0] = 1
        break;
	case "sacola_cheia":
			if(obj_camera.hotbar_spr[0]==1&&obj_camera.hotbar_spr[1]==3&&obj_camera.hotbar_spr[2]==4&&obj_camera.hotbar_spr[3]==5){
				obj_camera.hotbar_spr[0] = 2
				obj_camera.hotbar_spr[1] = 0
				obj_camera.hotbar_spr[2] = 0
				obj_camera.hotbar_spr[3] = 0
				obj_camera.hotbar_spr[4] = 0
				obj_camera.hotbar_spr[5] = 0
			}
			
        break;
	case "alho_poro":
			obj_camera.hotbar_spr[1] = 3
        break;
	case "batata":
			obj_camera.hotbar_spr[2] = 4
        break;
	case "carne":
			obj_camera.hotbar_spr[3] = 5
        break;
}
