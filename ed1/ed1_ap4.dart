import 'dart:math';

void main() {
  final random = Random();
  final variavel1 = random.nextInt(100);
  final variavel2 = random.nextInt(100);

  final double divisao = variavel1 / variavel2;
  final int divisaoInt = divisao.floor();
  final double divisaoDecimal = divisao - divisaoInt;


  print("Valor 1: $variavel1");
  print("Valor 2: $variavel2");
  print("Valor da divisão: $divisao");
  print("Valor do número inteiro: $divisaoInt");
  print("Valor dos números decimais: $divisaoDecimal");
}
