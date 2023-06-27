// Escreva uma funcao que receba um numero inteiro e retorne a soma de todos os numeros pares ate o numero fornecido
// Gere um numero entre 100 e 1000 aleatoriamente, e passe como parametro para a funcao definida
// Imprima no console a seguinte mensagem:
// A soma dos numeros pares entre 0 e XX e YYYY

import 'dart:math';

void main() {
  var random = Random();
  final num = random.nextInt(901) + 100;
  final somaPares = somarOsPares(num);
  print('A soma dos numeros pares entre 0 e ${num} é ${somaPares}');
}

somarOsPares(int num) {
  int somaPares = 0;
  for (var i = 1; i <= num; i++) {
    if (i.isEven == true) {
      somaPares += i;
    }
  }
  return somaPares;
}
