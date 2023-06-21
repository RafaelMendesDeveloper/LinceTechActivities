// Crie um programa que inicialize uma lista com 50 numeros gerados aleatoriamente entre 0 e 15 e imprima a lista gerada.
// Em sequencia, utilize um metodo removeWhere para retirar todos os numeros pares presentes na lista, e imprima novamente.
// As listas devem ser impressas conforme o exemplo abaixo:
// Lista original: 10 ; 13 ; 11 ; 7 ; 12 ; 9 ...
// Lista atualizada: 13 ; 11 ; 7 ; 9 ...

import 'dart:math';

void main() {
  var random = Random();
  var cont;

  List<int> lista1 = [];

  for (cont = 0; cont < 50; cont++) {
    lista1.add(random.nextInt(16));
  }

  print("Lista Original: $lista1");


  lista1.removeWhere((lista1) => lista1 % 2 == 0);

  print("Lista Atualizada: $lista1");
}
