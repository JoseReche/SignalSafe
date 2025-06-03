/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
instance_destroy(other); // Remove o objeto que colidiu
for(var i=0;i<4;i++){
	var valid = false
	for(var ii=0;ii<6;ii++){
		if(global.inventario[i][ii] == spr_vazia){
			global.inventario[i][ii] = other.post_img
			valid = true
			
			break
		}
	}
	if(valid){
		break
	}
}
