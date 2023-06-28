// AP2 - Validar numeros pares
// Crie uma funcao que receba como entrada um numero inteiro, aceitando apenas numeros pares,
// utilize uma estrutura try-catch para tratar possiveis erros. Se a funcao recebar um valor impar,
// lance uma exception e no tratamento da exception imprima a mensagem de erro:

// Exception: Entrada invalida. Insira apenas numeros pares.
// Caso seja informado um numero par, exiba:
// Entrada correta, voce inseriu um numero par.

void main() {
  try {
    checarPar(50);
    print('Entrada correta, você inseriu um número par!');
  } catch (e) {
    print(e);
  }
}

checarPar(int Numero) {
  if (Numero.isEven == true) {
    return;
  } else
    throw Exception('Entrada invalida. Insira apenas numeros pares');
}
