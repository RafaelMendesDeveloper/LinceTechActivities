// Implemente uma funcao que receba uma lista de strings e retorne a lista convertida para numeros.
// Se o texto nao puder ser convertido para string, deve ser incluido na lista o valor zero (0).
// Para essa atividade, nao e permitido utilizar os comandos if/else.

// Lista convertida: 10, 0, 0, 99, 381, 0, 47, 0, 123, 78

import 'dart:async';

void main() {
  List Lista = [
    '10',
    '2XXL7',
    'JOJ0',
    '99',
    '381',
    'AD44',
    '47',
    '2B',
    '123',
    '78'
  ];
  List<int> ListaAtualizada = [];
  for (var element in Lista) {
    var NUM = conversorDeString(element);
    ListaAtualizada.add(NUM);
  }
  Lista.clear();
  Lista = ListaAtualizada;
  print(Lista);
}

conversorDeString(String element) {
  int? convertido = int.tryParse(element);
  return convertido ?? 0;
}
