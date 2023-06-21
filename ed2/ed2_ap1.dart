// Crie um programa que inicialize uma lista com 10 numeros entre 0 e 100, gerados aleatoriamente.
// Imprima os itens da lista conforme o exemplo:

// Posicao: 0, Valor: XX
// Posicao: 1, Valor: XX
// Posicao: ...
// Posicao: 9, Valor: XX

import 'dart:math';

void main() {
  var random = Random();
  var cont;

  List<int> num = [];

  for (cont = 0; cont < 10; cont++) {
    num.add(random.nextInt(101));
    print('Posição: $cont, Valor: ${num[cont]}');
  }
}
