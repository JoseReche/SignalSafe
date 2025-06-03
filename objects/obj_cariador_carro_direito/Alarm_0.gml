/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if(!instance_place(x,y,obj_carro_direito) && !place_meeting(x + 50, y, obj_carro_direito)&& !place_meeting(x - 50, y, obj_carro_direito)){
	instance_create_layer(x,y,"Carros",obj_carro_direito,{
		speed : velox,
		})
	}  
alarm[0] = choose (80,90,100,110,120)
randomize()