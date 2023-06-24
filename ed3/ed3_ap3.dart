// Escreva um programa que receba uma lista de raios de circulos e com base nos raios,
// calcule o area e o perimetro de cada circulo, imprimindo esses dados no console.

// Requisitos
// A lista de raios deve ser inicializada com 10 numeros entre 1 e 100, gerados aleatoriamente.
// Defina uma funcao para calculo de raio e outra para calculo de perimetro.
// Os dados devem ser impressos conforme exemplo: Raio: 5, area: 78.54, perimetro: 31.42.

import 'dart:math';

void main() {
  final random = Random();

  final List<double> Lista = [];
  for (var cont = 0; cont < 10; cont++) {
    var numGerado = (random.nextDouble() * 99).toStringAsFixed(2);
    final double numGeradoFormatado = double.parse(numGerado);
    Lista.add(numGeradoFormatado);
    final area = calculoArea(Lista[cont]).toStringAsFixed(2);
    final perimetro = calculoPerimetro(Lista[cont]).toStringAsFixed(2);
    print('Raio: ${Lista[cont]}, area: ${area}, perimetro: ${perimetro}');
  }
}

calculoArea(double num) {
  final double area = pi * (num * num);
  return area;
}

calculoPerimetro(double num) {
  final double perimetro = num * 2;
  return perimetro;
}
