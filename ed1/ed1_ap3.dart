import 'dart:math';

void main() {
  final random = Random();
  var variavel1 = random.nextInt(100);
  var variavel2 = random.nextInt(100);

  print("Valor 1: $variavel1");
  print("Valor 2: $variavel2");

  final variavel3 = variavel1;
  variavel1 = variavel2;
  variavel2 = variavel3;

  print("Valor 1: $variavel1");
  print("Valor 2: $variavel2");
}
