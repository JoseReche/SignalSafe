//incerindo os carros
if(alarm[0] < 0){
	instance_create_layer(-128,2048,"Carros",obj_carro_direito);
	instance_create_layer(-128,1664,"Carros",obj_carro_direito);
	instance_create_layer(-128,1280,"Carros",obj_carro_direito);
	instance_create_layer(-128,896,"Carros",obj_carro_direito);
	instance_create_layer(-128,512,"Carros",obj_carro_direito);
	
	alarm[0] = choose(200,250,300,350,400,450,500);
	obj_carro_direito.carro = 1;
}
if(alarm[1] < 0){
	instance_create_layer(1376,1920,"Carros",obj_carro_esquerdo);
	instance_create_layer(1376,1536,"Carros",obj_carro_esquerdo);
	instance_create_layer(1376,1152,"Carros",obj_carro_esquerdo);
	instance_create_layer(1376,768,"Carros",obj_carro_esquerdo);
	instance_create_layer(1376,384,"Carros",obj_carro_esquerdo);
	alarm[1] = choose(200,250,300,350,400,450,500);
	obj_carro_esquerdo.carro = 1;	
}