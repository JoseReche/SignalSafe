// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
semafaro = false //0 - carro para / 1 - carro anda
dinheiro = 0
testex = 0
testey = 0
testexx = 0
testeyy = 0
fala = ""
vida = 6
validColisao = false;
pontuacao = 0;
dialogoPausado = false
jogoPausado = false
box_tutorial = 0
objetivo = 0;
tutorial=true;
pessoa_conversa = 0;
tutorial_andando = 0;
playerFaixa = false
passareala = false

//pontuação
bateuCarro=0
moedas=0


// Criando um inventário 3x3 vazio 
// Criando um inventário 4x6 preenchido com 'spr_vazia' (indicando que está vazio)
inventario = array_create(4); // Cria um array com 4 linhas

for (var i = 0; i < 4; i++) {
   inventario[i] = array_create(6, spr_vazia); // Cada linha tem 6 colunas, todas vazias
}
