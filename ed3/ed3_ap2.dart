// Crie uma funcao A que receba outra funcao como parametro.
// Crie uma funcao B que receba um numero como parametro.
// A funcao B devera retornar o resultado de uma operacao aritmetica de sua escolha no parametro recebido.
// A funcao A devera executar a funcao recebida como parametro duas vezes, passando numeros aleatorios.
// A funcao A devera retornar a soma das duas execucoes da funcao parametro.
// Crie uma funcao C, atendendo os mesmo requisitos da funcao B.
// A funcao main devera executar a funcao A passando a funcao B como parametro.
// A funcao main devera executar a funcao A passando a funcao C como parametro.
// A funcao main devera imprimir os resultados da funcao A(B) e A(C)

import 'dart:math';

void main() {
  final resultado1 = A(B);
  final resultado2 = A(C);

  print("A(B) = ${resultado1}");
  print("A(C) = ${resultado2}");
}

A(int Function(int) FuncaoParametro) {
  final random = Random();
  final resultado1 = FuncaoParametro(random.nextInt(1000));
  final resultado2 = FuncaoParametro(random.nextInt(1000));
  final soma = resultado1 + resultado2;

  return soma;
}

int B(int parametro) {
  parametro = parametro * 2;
  return parametro;
}

int C(int parametro) {
  parametro = parametro * 3;
  return parametro;
}
