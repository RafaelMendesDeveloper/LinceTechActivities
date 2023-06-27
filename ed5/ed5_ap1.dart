// Crie uma funcao que retorne uma lista contendo apenas os numeros impares comecando do zero ate um valor fornecido.
// Imprima a lista de numeros conforme exemplo:
// Impar: 1
// Impar: 3
// Impar: 5
// Impar: 7
// Impar: 9

import 'dart:math';

void main() {
  var random = Random();
  final maximo = random.nextInt(1000);
  final List<int> lista = [];
  adicionarNumeros(lista, maximo);
  retirarPares(lista);
  printarNumeros(lista);
}

adicionarNumeros(List<int> listaPraAdicionar, cont) {
  for (var i = 0; i < cont; i++) {
    listaPraAdicionar.add(i);
  }
  return listaPraAdicionar;
}

retirarPares(List<int> listaimpar) {
  for (var i = 0; i < listaimpar.length; i++) {
    if (listaimpar[i].isEven) {
      listaimpar.removeAt(i);
    }
  }
  return listaimpar;
}

printarNumeros(List<int> lista) {
  for (var i = 0; i < lista.length; i++) {
    print('Impar: ${lista[i]}');
  }
}
