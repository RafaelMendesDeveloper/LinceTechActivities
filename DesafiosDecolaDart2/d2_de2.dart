// IMPORTANTE: para a realizacao desse exercicio, nao deve ser utilizado dynamic.

// Objetivo do programa: fazer a simulacao de uma pessoa que consome calorias provenientes de produtos,
// os produtos sao fornecidos por fornecedores.

// Considerando o objetivo do programa, efetue uma refatoracao utilizando os conceitos de orientacao a objetos,
// completando os requisitos especificados abaixo, utilizando comentarios para demarcar no codigo onde os objetivos foram atingidos.

// Criar novos fornecedores: sanduiches, bolos, saladas, petiscos, ultra-caloricos
// Alterar o programa para escolher um novo fornecedor aleatoriamente para cada "refeicao"
// Nas informacoes da pessoa, adicione uma logica "status" do nivel de calorias (dica: utilizar um enum)
// Calorias <= 500 : Deficit extremo de calorias;
// 500 > Calorias <= 1800 : Deficit de calorias;
// 1800 > Calorias <= 2500 : Pessoa esta satisfeita;
// Calorias > 2500 : Excesso de calorias;
// Altere o programa para definir um nivel inicial de calorias aleatoriamente ao instanciar uma pessoa;
// Altere o programa para se basear no nivel de calorias para definir se a pessoa precisa de refeicoes
// Imprima o numero de refeicoes realizadas nas informacoes da pessoa;
// Tempo do desafio: 60 minutos

//Inicio 10:48

import 'dart:math';

void main() {
  var random = Random();
  // bool operador = random.nextBool();
  final pessoa = Pessoa();
  late var fornecedor;
  // Consumindo produtos fornecidos
  for (var i = 0; i < 5; i++) {
    final factory = RandomFornecedorFactory();
    final fornecedor = factory.createRandomFornecedor();
  }

  pessoa.informacoes();
}

class Produto {
  Produto(this.nome, this.calorias);

  /// Nome deste produto
  final String nome;

  /// Total de calorias
  final int calorias;
}

// abstract class FornecedorAleatorio {
// var
//  FornecedorAleatorio(this.)
// }

abstract class FornecedorEscolhido {
  Produto fornecer();
}

class FornecedorDeBebidas implements FornecedorEscolhido {
  final _random = Random();
  final _bebidasDisponiveis = <Produto>[
    Produto('Agua', 0),
    Produto('Refrigerante', 200),
    Produto('Suco de fruta', 100),
    Produto('Energetico', 135),
    Produto('Cafe', 60),
    Produto('Cha', 35),
  ];

  /// Retorna um produto que pode ser consumido por um consumidor
  @override
  Produto fornecer() {
    return _bebidasDisponiveis[_random.nextInt(_bebidasDisponiveis.length)];
  }
}

class FornecedorDeComidas implements FornecedorEscolhido {
  final _random = Random();
  final _comidasDisponiveis = <Produto>[
    Produto('Sanduíche', 400),
    Produto('Bolo', 600),
    Produto('Salada', 100),
    Produto('Petiscos', 255),
    Produto('Ultra-Calóricos', 950),
  ];

  /// Retorna um produto que pode ser consumido por um consumidor
  @override
  Produto fornecer() {
    return _comidasDisponiveis[_random.nextInt(_comidasDisponiveis.length)];
  }
} //classe criada do fornecedor de comidas

class RandomFornecedorFactory {
  FornecedorEscolhido createRandomFornecedor() {
    final random = Random();
    final randomNumber =
        random.nextInt(2); // Gera um número aleatório entre 0 e 1

    if (randomNumber == 0) {
      return FornecedorDeComidas();
    } else {
      return FornecedorDeBebidas();
    }
  }
}

class Pessoa {
  // Acumulador de calorias
  int _caloriasConsumidas = 0;

  /// Imprime as informacoes desse consumidor
  void informacoes() {
    print('Calorias consumidas: $_caloriasConsumidas');
  }

  /// Consome um produto e aumenta o numero de calorias
  void refeicao(FornecedorDeComidas fornecedor) {
    final produto = fornecedor.fornecer();
    print('Consumindo ${produto.nome} (${produto.calorias} calorias)');

    _caloriasConsumidas += produto.calorias;
  }
}
