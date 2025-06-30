/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if(fala){
	
	if(!global.semafaro){
	    global.pessoa_conversa = 2;
		global.fala="PODE PASSAR SO NÃO DEMORE MUITO, PORQUE ALGUM CARRO PODE SAIR E NÃO TE VER TOME CUIDADO PARA SEMPRE PASSAR QUANDO OS CARROS ESTÃO PARADOS."
	}else{
		global.pessoa_conversa = 3;
		global.fala="CUIDADOOOO!!! NÃO TENTE ATRAVESSAR A FAIXA COM OS CARROS EM MOVIMENTO É MUITO PERIGOSO ESPERE ATÉ FICAR VERDE."
	}
}
if(alarm[0]<=0){alarm[0] = 500}