// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
semafaro = true //0 - carro para / 1 - carro anda
dinheiro = 0
testex = 0
testey = 0
testexx = 0
testeyy = 0
fala = ""
vida = 6
mover = true

validColisao = false;
dialogoPausado = false
objetivo = 0;
pessoa_conversa = 0;

playerFaixa = false
passareala = false
jogoPausado = false
//pontuação
bateuCarro=0
moedas=0

tempo_inicio = 0
ambiente = -1

hotbar_spr = [0,0,0,0,0,0]

// Criando um inventário 3x3 vazio 
// Criando um inventário 4x6 preenchido com 'spr_vazia' (indicando que está vazio)
inventario = array_create(4); // Cria um array com 4 linhas

for (var i = 0; i < 4; i++) {
   inventario[i] = array_create(6, spr_vazia); // Cada linha tem 6 colunas, todas vazias
}
