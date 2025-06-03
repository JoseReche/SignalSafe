/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if(!instance_place(x,y,obj_carro_esquerdo) && !place_meeting(x - 50, y, obj_carro_esquerdo)&& !place_meeting(x + 50, y, obj_carro_esquerdo)){
	instance_create_layer(x,y,"Carros",obj_carro_esquerdo,{
		speed : velox
	})
}
alarm[0] = choose (65,85,95,105,115)
randomize()