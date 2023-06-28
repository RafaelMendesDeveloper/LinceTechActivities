// Crie uma interface chamada Forma que declare um metodo abstrato chamado calcularArea
// Em seguida, crie uma classe chamada Retangulo que implemente a interface Forma
// A classe Retangulo deve ter dois atributos privados: base e altura
// No construtor da classe Retangulo, os valores da base e altura devem ser passados como parametros
// Caso o Retangulo seja inicializado com uma base ou altura menor ou igual a zero, lance uma exception:
// Exception: Dimensoes invalidas, informe apenas valores positivos maiores que zero
// Implemente o metodo calcularArea na classe Retangulo. Area do retangulo = base * altura
// Utilize um bloco try-catch para tratar erros durante na execucao do programa
// Inicialize um retangulo com numeros gerados aleatoriamente, entre 0 e 99
// Imprima o valor da area do retangulo:
// Area do retangulo: 35.59

import 'dart:math';

void main() {
  final random = Random();
  
  try{
    final retangulo = Retangulo(
      base: random.nextDouble()*99,
      altura: random.nextDouble()*99,
    );
    double area = retangulo.calcularArea();
    print('Área do retângulo: ${area.toStringAsFixed(2)}');
  }  catch (e){
    print(e);
  }
}

abstract class Forma {
  double calcularArea();
}

class Retangulo implements Forma {
  Retangulo(this.base, this.altura){
    if(base<=0 || altura<=0){
      throw Exception('imensoes invalidas, informe apenas valores positivos maiores que zero');
  }
}

final double base;
final double altura;

@override
double calcularArea(double altura, double base) {
  return altura * base;
} }

