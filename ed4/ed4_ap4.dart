// Crie uma funcao utilizando apenas operadores para retornar o percentual inteiro de desconto aplicado em um produto,
// recebendo como parametro o valor do produto e o valor com desconto.
// Para essa atividade nao eh permitido utilizar os comandos if/else.

// O produto custava 10 reais e foi vendido por 7 reais. O desconto dado foi 30%.

void main() {
  final valorProduto = 7;
  final valorAntigo = 10;

  final porcentagem = descobrirPorcentagem(valorProduto, valorAntigo);

  print(
      'O produto custava ${valorAntigo} reais e foi vendido por ${valorProduto} reais. O desconto dado foi ${porcentagem}%');
}

descobrirPorcentagem(int desconto, int valorAntigo) {
  final int valorDesconto = valorAntigo - desconto;
  final porcetagem = (valorDesconto / valorAntigo) * 100;
  return porcetagem;
}
