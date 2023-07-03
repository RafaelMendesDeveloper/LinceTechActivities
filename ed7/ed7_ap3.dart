// Crie uma classe chamada Produto com os atributos nome e preco
// A classe deve ter um metodo chamado desconto que recebe um valor percentual de desconto
// e retorna o preco do produto com o desconto aplicado
// Repetir a criacao da classe criando uma lista com no minimo 5 produtos
//e retorne impresso na tela o resultado dos descontos conforme exemplo:
// Novo preco do produto XXXXXXXXXXXXXX (com desconto) 999.99

void main() {
  final produtos = <Produto>[];
  final nomes = ['boné', 'blusa', 'calça', 'meia', 'tênis'];
  List valores = [150.00, 129.99, 99.90, 28.75, 649.95];

  for (var i = 0; i < 5; i++) {
    produtos.add(Produto(nomes[i], valores[i]));
    produtos[i];
    print('Novo preço do produto ${nomes[i]} (com desconto) ${produtos[i].desconto(24.75).toStringAsFixed(2)}');
  }
}

class Produto {
  Produto(this.nome, this.preco);

  late String nome;
  late double preco;

  double desconto(double desconto) {
    final descontoReal = desconto * 0.01;
    preco = preco - (preco * descontoReal);
    return preco;
  }
}
