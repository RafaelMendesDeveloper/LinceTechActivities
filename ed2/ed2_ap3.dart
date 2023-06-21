// Crie um programa que inicialize uma lista com 50 numeros gerados aleatoriamente entre 10 e 21 e imprima a lista gerada.
// Em sequencia, imprima todos os valores unicos presentes na lista.
// As listas devem ser impressas conforme o exemplo abaixo:
// Lista original: 10 ; 17 ; 20 ; 10 ; 10 ; 13 ; 11 ; 17 ...
// Itens unicos: 10 ; 17 ; 20 ; 13 ; 17 ...

import 'dart:math';

void main() {
  var random = Random();
  var cont;

  final List<int> lista = [];

  for (cont = 0; cont < 50; cont++) {
    lista.add(random.nextInt(11) + 10);
  }

  final List<int> listaSemRep = lista.toSet().toList();

  print(lista);
  print(listaSemRep);
}
