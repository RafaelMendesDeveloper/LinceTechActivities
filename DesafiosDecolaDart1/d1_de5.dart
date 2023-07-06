// Escreva um programa que gere uma sugestao de nome completo aleatorio, com base em listas pre-definidas de nomes e sobrenomes.

// Lista de nomes:
// Ana, Maria, Francisco, Joao, Pedro, Gabriel, Rafaela, Marcio, Jose, Carlos, Patricia, Helena, Camila,
// Mateus, Gabriel, Samuel, Karina, Antonio, Daniel, Joel, Cristiana, Sebastiao, Paula

// Lista de sobrenomes: Silva, Souza, Almeida, Azevedo, Braga, Barros, Campos, Cardoso, Costa, Teixeira, Santos,
// Rodrigues, Ferreira, Alves, Pereira, Lima, Gomes, Ribeiro, Carvalho, Lopes, Barbosa

// Tempo do desafio: 10 minutos

// Inicio 18:07

import 'dart:math';

void main() {
  final List<String> nomes = [
    'Ana',
    'Maria',
    'Francisco',
    'Joao',
    'Pedro',
    'Gabriel',
    'Rafaela',
    'Marcio',
    'Jose',
    ' Carlos',
    'Patricia',
    'Helena',
    'Camila',
    'Mateus',
    'Gabriel',
    'Samuel',
    'Karina',
    'Antonio',
    'Daniel',
    'Joel',
    'Cristiana',
    'Sebastiao',
    'Paula'
  ];

  final List<String> sobrenomes = [
    'Silva',
    'Souza',
    'Almeida',
    'Azevedo',
    'Braga',
    'Barros',
    'Campos',
    'Cardoso',
    'Costa',
    'Teixeira',
    'Santos',
    'Rodrigues',
    'Ferreira',
    'Alves',
    'Pereira',
    'Lima',
    'Gomes',
    'Ribeiro',
    'Carvalho',
    'Lopes',
    'Barbosa'
  ];

  int numNome = gerarNumeroAleatorio(nomes);
  int numSobrenome = gerarNumeroAleatorio(sobrenomes);

  print('Nome sorteado = ${nomes[numNome]} ${sobrenomes[numSobrenome]}');
}

gerarNumeroAleatorio(List<String> lista) {
  final random = Random();
  final num1 = random.nextInt(lista.length);
  return num1;
}

//Fim 18:14

//Tempo estimado: 10 minutos
//Tempo decorrido: 7 minutos :)