// Objetivo do programa: fazer a comparacao de formas geometricas para identificar o de maior area e o de maior perimetro e
// imprimir o nome e as medidas desses objetos.

// Considerando o objetivo do programa, efetue uma refatoracao utilizando os conceitos de orientacao a objetos,
// completando os requisitos especificados abaixo, utilizando comentarios para demarcar no codigo onde os objetivos foram atingidos.

// Utilizar heranca
// Utilizar polimorfismo
// Alterar a classe ComparadorFormasGeometricas para ter apenas dois metodos, uma para area e um para perimetro
// Inclua no sistema a definicao da forma geometrica Triangulo equilatero
// Inclua no sistema a definicao da forma geometrica Triangulo retangulo
// Inclua no sistema a definicao da forma geometrica Pentagono regular
// Inclua no sistema a definicao da forma geometrica Hexagono regular

//Inicio 18::50

import 'dart:math' as math;
import 'dart:math';

void main() {
  //Colocando valores aleatórios pros valores
  final random = Random();

  // Definindo as formas geometricas de forma aleatoria
  final circuloA = Circulo('Circulo A', random.nextDouble() * 50);
  final circuloB = Circulo('Circulo B', random.nextDouble() * 50);
  final retanguloA = Retangulo(
      'Retangulo A', random.nextDouble() * 100, random.nextDouble() * 100);
  final retanguloB = Retangulo(
      'Retangulo B', random.nextDouble() * 100, random.nextDouble() * 100);
  final quadrado = Quadrado('Quadrado', random.nextDouble() * 100);
  final trianguloEquilatero =
      TrianguloEquilatero('Triângulo Equílatero', random.nextDouble() * 100);
  final trianguloRetangulo = TrianguloRetangulo('Triângulo Retângulo',
      random.nextDouble() * 100, random.nextDouble() * 100);
  final pentagono = Pentagono('Pentágono', random.nextDouble() * 100);
  final hexagono = Hexagono('Hexagono', random.nextDouble() * 100);

  MaiorArea(
      circuloA,
      circuloB,
      retanguloA,
      retanguloB,
      quadrado,
      trianguloEquilatero,
      trianguloRetangulo,
      pentagono,
      hexagono); //Chamar o método criado pra área
  MaiorPerimetro(
      circuloA,
      circuloB,
      retanguloA,
      retanguloB,
      quadrado,
      trianguloEquilatero,
      trianguloRetangulo,
      pentagono,
      hexagono); //Chamar a função criado pra perímetro
}

// identificar maior área... de um jeito que deixe o código mais limpo
MaiorArea(
    Circulo circuloA,
    Circulo circuloB,
    Retangulo retanguloA,
    Retangulo retanguloB,
    Quadrado quadrado,
    TrianguloEquilatero trianguloEquilatero,
    TrianguloRetangulo trianguloRetangulo,
    Pentagono pentagono,
    Hexagono hexagono) {
  if (circuloA.area > circuloB.area &&
      circuloA.area > retanguloA.area &&
      circuloA.area > retanguloB.area &&
      circuloA.area > quadrado.area &&
      circuloA.area > trianguloEquilatero.area &&
      circuloA.area > trianguloRetangulo.area &&
      circuloA.area > pentagono.area &&
      circuloA.area > hexagono.area)
    print(
        'A maior área é ${circuloA.area.toStringAsFixed(2)}, que pertence ao círculo A!');
  else if (circuloB.area > circuloA.area &&
      circuloB.area > retanguloA.area &&
      circuloB.area > retanguloB.area &&
      circuloB.area > quadrado.area &&
      circuloB.area > trianguloEquilatero.area &&
      circuloB.area > trianguloRetangulo.area &&
      circuloB.area > pentagono.area &&
      circuloB.area > hexagono.area)
    print(
        'A maior área é ${circuloB.area.toStringAsFixed(2)}, que pertence ao círculo B!');
  else if (retanguloA.area > circuloA.area &&
      retanguloA.area > circuloB.area &&
      retanguloA.area > retanguloB.area &&
      retanguloA.area > quadrado.area &&
      retanguloA.area > trianguloEquilatero.area &&
      retanguloA.area > trianguloRetangulo.area &&
      retanguloA.area > pentagono.area &&
      retanguloA.area > hexagono.area)
    print(
        'A maior área é ${retanguloA.area.toStringAsFixed(2)}, que pertence ao retângulo A!');
  else if (retanguloB.area > circuloA.area &&
      retanguloB.area > circuloB.area &&
      retanguloB.area > retanguloA.area &&
      retanguloB.area > quadrado.area &&
      retanguloB.area > trianguloEquilatero.area &&
      retanguloB.area > trianguloRetangulo.area &&
      retanguloB.area > pentagono.area &&
      retanguloB.area > hexagono.area)
    print(
        'A maior área é ${retanguloB.area.toStringAsFixed(2)}, que pertence ao retângulo B!');
  else if (quadrado.area > circuloA.area &&
      quadrado.area > circuloB.area &&
      quadrado.area > retanguloA.area &&
      quadrado.area > retanguloB.area &&
      quadrado.area > trianguloEquilatero.area &&
      quadrado.area > trianguloRetangulo.area &&
      quadrado.area > pentagono.area &&
      quadrado.area > hexagono.area)
    print(
        'A maior área é ${quadrado.area.toStringAsFixed(2)}, que pertence ao quadrado!');
  else if (trianguloEquilatero.area > circuloA.area &&
      trianguloEquilatero.area > circuloB.area &&
      trianguloEquilatero.area > retanguloA.area &&
      trianguloEquilatero.area > retanguloB.area &&
      trianguloEquilatero.area > quadrado.area &&
      trianguloEquilatero.area > trianguloRetangulo.area &&
      trianguloEquilatero.area > pentagono.area &&
      trianguloEquilatero.area > hexagono.area)
    print(
        'A maior área é ${trianguloEquilatero.area.toStringAsFixed(2)}, que pertence ao triângulo equilátero!');
  else if (trianguloRetangulo.area > circuloA.area &&
      trianguloRetangulo.area > circuloB.area &&
      trianguloRetangulo.area > retanguloA.area &&
      trianguloRetangulo.area > retanguloB.area &&
      trianguloRetangulo.area > quadrado.area &&
      trianguloRetangulo.area > trianguloEquilatero.area &&
      trianguloRetangulo.area > pentagono.area &&
      trianguloRetangulo.area > hexagono.area)
    print(
        'A maior área é ${trianguloRetangulo.area.toStringAsFixed(2)}, que pertence ao triângulo retângulo!');
  else if (pentagono.area > circuloA.area &&
      pentagono.area > circuloB.area &&
      pentagono.area > retanguloA.area &&
      pentagono.area > retanguloB.area &&
      pentagono.area > trianguloEquilatero.area &&
      pentagono.area > trianguloRetangulo.area &&
      pentagono.area > quadrado.area &&
      pentagono.area > hexagono.area)
    print(
        'A maior área é ${pentagono.area.toStringAsFixed(2)}, que pertence ao pentagono!');
  else if (hexagono.area > circuloA.area &&
      hexagono.area > circuloB.area &&
      hexagono.area > retanguloA.area &&
      hexagono.area > retanguloB.area &&
      hexagono.area > trianguloEquilatero.area &&
      hexagono.area > trianguloRetangulo.area &&
      hexagono.area > quadrado.area &&
      hexagono.area > pentagono.area)
    print(
        'A maior área é ${hexagono.area.toStringAsFixed(2)}, que pertence ao hexagono!');
}

MaiorPerimetro(
    Circulo circuloA,
    Circulo circuloB,
    Retangulo retanguloA,
    Retangulo retanguloB,
    Quadrado quadrado,
    TrianguloEquilatero trianguloEquilatero,
    TrianguloRetangulo trianguloRetangulo,
    Pentagono pentagono,
    Hexagono hexagono) {
  if (circuloA.perimetro > circuloB.perimetro &&
      circuloA.perimetro > retanguloA.perimetro &&
      circuloA.perimetro > retanguloB.perimetro &&
      circuloA.perimetro > quadrado.perimetro &&
      circuloA.perimetro > trianguloEquilatero.perimetro &&
      circuloA.perimetro > trianguloRetangulo.perimetro &&
      circuloA.perimetro > pentagono.perimetro &&
      circuloA.perimetro > hexagono.perimetro)
    print(
        'O maior perímetro é ${circuloA.perimetro.toStringAsFixed(2)}, que pertence ao círculo A!');
  else if (circuloB.perimetro > circuloA.perimetro &&
      circuloB.perimetro > retanguloA.perimetro &&
      circuloB.perimetro > retanguloB.perimetro &&
      circuloB.perimetro > quadrado.perimetro &&
      circuloB.perimetro > trianguloEquilatero.perimetro &&
      circuloB.perimetro > trianguloRetangulo.perimetro &&
      circuloB.perimetro > pentagono.perimetro &&
      circuloB.perimetro > hexagono.perimetro)
    print(
        'O maior perimetro é ${circuloB.perimetro.toStringAsFixed(2)}, que pertence ao círculo B!');
  else if (retanguloA.perimetro > circuloA.perimetro &&
      retanguloA.perimetro > circuloB.perimetro &&
      retanguloA.perimetro > retanguloB.perimetro &&
      retanguloA.perimetro > quadrado.perimetro &&
      retanguloA.perimetro > trianguloEquilatero.perimetro &&
      retanguloA.perimetro > trianguloRetangulo.perimetro &&
      retanguloA.perimetro > pentagono.perimetro &&
      retanguloA.perimetro > hexagono.perimetro)
    print(
        'O maior perímetro é ${retanguloA.perimetro.toStringAsFixed(2)}, que pertence ao retângulo A!');
  else if (retanguloB.perimetro > circuloA.perimetro &&
      retanguloB.perimetro > circuloB.perimetro &&
      retanguloB.perimetro > retanguloA.perimetro &&
      retanguloB.perimetro > quadrado.perimetro &&
      retanguloB.perimetro > trianguloEquilatero.perimetro &&
      retanguloB.perimetro > trianguloRetangulo.perimetro &&
      retanguloB.perimetro > pentagono.perimetro &&
      retanguloB.perimetro > hexagono.perimetro)
    print(
        'O maior perímetro é ${retanguloB.perimetro.toStringAsFixed(2)}, que pertence ao retângulo B!');
  else if (quadrado.perimetro > circuloA.perimetro &&
      quadrado.perimetro > circuloB.perimetro &&
      quadrado.perimetro > retanguloA.perimetro &&
      quadrado.perimetro > retanguloB.perimetro &&
      quadrado.perimetro > trianguloEquilatero.perimetro &&
      quadrado.perimetro > trianguloRetangulo.perimetro &&
      quadrado.perimetro > pentagono.perimetro &&
      quadrado.perimetro > hexagono.perimetro)
    print(
        'O maior perímetro é ${quadrado.perimetro.toStringAsFixed(2)}, que pertence ao quadrado!');
  else if (trianguloEquilatero.perimetro > circuloA.perimetro &&
      trianguloEquilatero.perimetro > circuloB.perimetro &&
      trianguloEquilatero.perimetro > retanguloA.perimetro &&
      trianguloEquilatero.perimetro > retanguloB.perimetro &&
      trianguloEquilatero.perimetro > quadrado.perimetro &&
      trianguloEquilatero.perimetro > trianguloRetangulo.perimetro &&
      trianguloEquilatero.perimetro > pentagono.perimetro &&
      trianguloEquilatero.perimetro > hexagono.perimetro)
    print(
        'O maior perímetro é ${trianguloEquilatero.perimetro.toStringAsFixed(2)}, que pertence ao triângulo equilátero!');
  else if (trianguloRetangulo.perimetro > circuloA.perimetro &&
      trianguloRetangulo.perimetro > circuloB.perimetro &&
      trianguloRetangulo.perimetro > retanguloA.perimetro &&
      trianguloRetangulo.perimetro > retanguloB.perimetro &&
      trianguloRetangulo.perimetro > quadrado.perimetro &&
      trianguloRetangulo.perimetro > trianguloEquilatero.perimetro &&
      trianguloRetangulo.perimetro > pentagono.perimetro &&
      trianguloRetangulo.perimetro > hexagono.perimetro)
    print(
        'O maior perímetro é ${trianguloRetangulo.perimetro.toStringAsFixed(2)}, que pertence ao triângulo retângulo!');
  else if (pentagono.perimetro > circuloA.perimetro &&
      pentagono.perimetro > circuloB.perimetro &&
      pentagono.perimetro > retanguloA.perimetro &&
      pentagono.perimetro > retanguloB.perimetro &&
      pentagono.perimetro > trianguloEquilatero.perimetro &&
      pentagono.perimetro > trianguloRetangulo.perimetro &&
      pentagono.perimetro > quadrado.perimetro &&
      pentagono.perimetro > hexagono.perimetro)
    print(
        'O maior perímetro ${pentagono.perimetro.toStringAsFixed(2)}, que pertence ao pentagono!');
  else if (hexagono.perimetro > circuloA.perimetro &&
      hexagono.perimetro > circuloB.perimetro &&
      hexagono.perimetro > retanguloA.perimetro &&
      hexagono.perimetro > retanguloB.perimetro &&
      hexagono.perimetro > trianguloEquilatero.perimetro &&
      hexagono.perimetro > trianguloRetangulo.perimetro &&
      hexagono.perimetro > quadrado.perimetro &&
      hexagono.perimetro > pentagono.perimetro)
    print(
        'O maior perímetro é ${hexagono.perimetro.toStringAsFixed(2)}, que pertence ao hexagono!');
}

/// Representa a forma geometrica "circulo"
class Circulo {
  /// Construtor padrao, recebe o [raio] do circulo.
  Circulo(this.nome, this.raio);

  final String nome;
  final double raio;

  /// Retorna a area desse circulo
  double get area => math.pi * math.pow(raio, 2);

  /// Retorna o perimetro desse circulo
  double get perimetro => 2 * math.pi * raio;
}

/// Representa a forma geometrica "retangulo", forma geometrica de quatro lados
/// e angulos retos (90 graus).
class Retangulo {
  /// Construtor padrao, recebe a [altura] e [largura] do retangulo
  Retangulo(this.nome, this.altura, this.largura);

  final String nome;
  final double largura;
  final double altura;

  /// Retorna a area desse circulo
  double get area => altura * largura;

  /// Retorna o perimetro desse circulo
  double get perimetro => (altura * 2) + (largura * 2);
}

/// Representa a forma geometrica "quadrado", que e um formato especial de
/// retangulo, onde todos os lados possuem o mesmo tamanho.
class Quadrado {
  /// Construtor padrao, recebe o [lado] do quadrado
  Quadrado(this.nome, this.lado);

  final String nome;
  final double lado;

  /// Retorna a area desse quadrado
  double get area => lado * lado;

  /// Retorna o perimetro desse quadrado
  double get perimetro => lado * 4;
}

/// Representa a forma geometrica "TriânguloEquilatero"
class TrianguloEquilatero {
  /// Construtor padrao, recebe o [raio] do circulo.
  TrianguloEquilatero(this.nome, this.lado);

  final String nome;
  final double lado;

  /// Retorna a area desse triângulo
  double get area => (math.pow(lado, 2) * sqrt(3)) / 4;

  /// Retorna o perimetro desse triangulo
  double get perimetro => 3 * lado;
}

class TrianguloRetangulo {
  TrianguloRetangulo(this.nome, this.base, this.altura) {
    hipotenusa = sqrt(pow(base, 2) + pow(altura, 2));
  }

  final String nome;
  final double base;
  final double altura;
  late final double hipotenusa;

  /// Retorna a area desse triângulo
  double get area => base * altura / 2;

  /// Retorna o perimetro desse triangulo
  double get perimetro => altura + base + hipotenusa;
}

class Pentagono {
  Pentagono(this.nome, this.lado) {
    apotema = lado / (2 * 0.726);
  }

  final String nome;
  final double lado;
  late final double apotema;

  double get area => 5 / 2 * lado * apotema;

  double get perimetro => 5 * lado;
}

class Hexagono {
  Hexagono(this.nome, this.lado);

  final String nome;
  final double lado;

  double get area => 3 * lado * lado * sqrt(3) / 2;

  double get perimetro => 3 * lado;
}
