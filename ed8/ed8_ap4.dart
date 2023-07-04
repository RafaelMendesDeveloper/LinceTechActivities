// Crie uma classe abstrata chamada Calculadora
// Na class Calculadora defina um metodo estatico chamado dobro, que recebe um numero como parametro e retorna o dobro desse numero
// Gere um numero aleatoriamente
// Utilize o metodo estatico dobro da classe Calculadora para calcular o dobro do numero digitado e exiba o resultado no console:
// O dobro do numero 1111 e: 2222

import 'dart:math';

void main() {
  final random = Random();
  final num = random.nextInt(10000);
  final resultado = Calculadora.dobro(num);

  print('O dobro do numero $num e: $resultado');
}

abstract class Calculadora {
  static dobro(int num) {
    return num * 2;
  }
}
