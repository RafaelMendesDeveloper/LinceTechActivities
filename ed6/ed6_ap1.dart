// Crie uma funcao que receba uma string e converta essas string para inteiro.
// Utilize uma estrutura try-catch para tratar possiveis erros ao converter a entrada do usuario para um numero inteiro.
// Se ocorrer um erro, exiba a mensagem "Entrada invalida. Insira apenas numeros inteiros." Caso contrario, exiba o numero digitado.

// Exemplo de saida com erro:
// Entrada invalida. Digite apenas numeros inteiros.
// Exemplo de saida bem sucedida:
// Numero digitado: 9999

void main() {
  converterString('texto');
  converterString('89');
}

converterString(String texto) {
  try {
    final StringConvertida = int.parse(texto);
    print('Numero digitado: $StringConvertida');
  } catch (e) {
    print('Entrada invalida. Insira apenas numeros inteiros.');
  }
}
