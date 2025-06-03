/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
switch(npc){
	case "Mãe":
		if(obj_camera.hotbar_spr[0] == 2){
			global.fala ="Muito obrigado filho por ter ido até lá, fico feliz por ter aprendido a andar no transito"
			obj_camera.hotbar_spr[0] = 0;
			global.objetivo = 2
		}else if(obj_camera.hotbar_spr[0] == 0){
			global.fala = "Filho, agora que você está crescido quero pedir um favor para você. Preciso que você vá no mercadinho para a mãe e compre um alface uma batata e carne para o almoço hoje. Para isso, vou te lembrar sobre os cuidados que você deve ter no caminho."
			global.objetivo = 1
		}
		global.pessoa_conversa = 0;
	break;
	case "Caixa":
		if(obj_camera.hotbar_spr[0] != 2){
			global.fala ="Não saia sem pagar"
		}else{
			global.fala ="tenha um bom dinha menino"
		}
		global.pessoa_conversa = 1;
	break;
	case "Objetivo":
		if(global.objetivo == 0){
			global.fala ="Filho eu preciso falar com você pode vir aqui na cosinha. *Eu deveria falar com a mamãe primeiro*"
		}else{global.fala =""}
		global.pessoa_conversa = 0;
	break
	case "Guarda":
		global.fala ="OI! fique atento a rua e aguarde até que os carros parem e acendam as luzes amarelas para passar "
	break
	case "Guarda2":
		global.fala ="OI! fique atento a rua e aguarde até que os carros parem e acendam as luzes amarelas para passar "
	break
}
if(keyboard_check(ord("Z"))){instance_destroy()}