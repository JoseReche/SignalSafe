/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if(passagem){
	global.fala = "PODE PASSAR CRIANÇA MAS NÃO DEMORE MUITO NÃO COSIGO SEGURALOS POR MUITO TEMPO ";
	obj_guarda.image_index = 1
	global.semafaro = false
}else{
	global.fala = "OI! FIQUE ATENTO ASSIM QUE EU DISSER VOCÊ PODE PASSAR.";
	obj_guarda.image_index = 0
	global.semafaro = true
}
global.pessoa_conversa = 4;
