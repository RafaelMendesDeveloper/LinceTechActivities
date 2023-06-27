// Crie uma funcao que receba como parametro um numero inteiro e retorne a letra do alfabeto correspondente ao numero recebido
// Gere 5 numeros aleatorios, e imprima a letra equivalente a esses numeros:
// Numero 1 -> Letra A
// Numero 5 -> Letra E
// Numero 7 -> Letra G
// Numero 2 -> Letra B
// Numero 11 -> Letra K

import 'dart:math';

void main() {
  var random = Random();
  final List<int> numeros = [];
  for (var i = 0; i < 5; i++) {
    numeros.add(random.nextInt(26) + 1);
  }
  transformarLetra(numeros);
}

transformarLetra(List<int> lista) {
  for (var num in lista) {
    int valorAscii = 64 + num;
    String letra = String.fromCharCode(valorAscii);
    print('NÚMERO ${num} -> LETRA ${letra}');
  }
}
