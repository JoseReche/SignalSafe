/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
index_img = 0
post_img = spr_vazia
switch (post){
    case "Bailarina":
		index_img = 0
		image_index = index_img
		post_img = spr_post_bailarina
    break;
    case "Mirante":
		index_img = 6
		image_index = index_img
		post_img = spr_post_mirante
    break;
	case "":
		index_img = 12
		image_index = index_img
		post_img = spr_vazia
    break;
}