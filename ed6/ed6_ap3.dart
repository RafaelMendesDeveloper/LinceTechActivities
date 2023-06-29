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
  try {
    Retangulo valores = Retangulo(random.nextDouble()*100, random.nextDouble()*100);
    validarValores(valores.altura, valores.base);
    print('Área do retângulo: ${valores.calcularArea().toStringAsFixed(2)}');
  } catch (e) {
    print(e);
  }
}

abstract class Forma {
  calcularArea();
}

class Retangulo implements Forma {
  final double base;
  final double altura;

  Retangulo(this.altura, this.base);

  double calcularArea() {
    return base * altura;
  }
}

validarValores(double altura, double base) {
  if (altura <= 0 || base <= 0) {
    throw Exception(
        'Dimensoes invalidas, informe apenas valores positivos maiores que zero');
  }
  return;
}
