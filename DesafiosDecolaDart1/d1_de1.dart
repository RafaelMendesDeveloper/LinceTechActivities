// DE1 - Raios e perimetros
// Escreva um programa que receba uma lista de raios de circulos e com base nos raios,
// calcule o area e o perimetro de cada circulo e exiba no console. Utilize a biblioteca dart:math.

// Tempo do desafio: 10 minutos

// Raios: 5, 8, 12, 7.3, 18, 2, 25
// Saida esperada no console:

// Raio: 5, area: 78.54, perimetro: 31.42.
// Raio: 8, area: 201.06, perimetro: 50.27.
// Raio: 12, area: 452.39, perimetro: 75.40.
// Raio: 7.3, area: 167.42, perimetro: 45.87.
// Raio: 18, area: 1017.88, perimetro: 113.10.
// Raio: 2, area: 12.57, perimetro: 12.57.
// Raio: 25, area: 1963.50, perimetro: 157.08.

//Ínicio: 16:10
import 'dart:math';

void main() {
  final List<double> raios = [5, 8, 12, 7.3, 18, 2, 25];

  for (var raio in raios) {
    var area = calcularArea(raio);
    var perimetro = calcularPerimetro(raio);
    print('Raio: ${raio}, area: ${area.toStringAsFixed(2)}, perimetro: ${perimetro.toStringAsFixed(2)}.');
  }
}

calcularArea(double raio) {
  var area = pi * raio * raio;
  return area;
}

calcularPerimetro(double raio) {
  var perimetro = pi * raio * 2;
  return perimetro;
}
//Fim 16:17

//Tempo estimado: 10 minutos
//Tempo utilizado: 7 minutos
