// Crie uma classe chamada Pessoa com os seguintes atributos privados: nome, idade, altura
// A classe deve ter um setter para a idade, que valida se o valor e maior ou igual a zero antes de atribuir o valor
// A classe deve ter um getter para a idade
// Em seguida, crie um objeto da classe Pessoa, seguindo o modelo:
// Pode ter qualquer nome
// A idade deve ser um numero inteiro gerado aleatoriamente, entre 1 e 100
// A altura deve ser um numero decimal gerado aleatoriamente, entre 1.0 e 2.3
// Utilize os setters para atribuir os valores aos atributos da pessoa
// Em seguida, utilize os getters para obter os valores e exibi-los no console:
// Nome: XXXXXXXXXXXXXXXXX
// Idade: 99
// Altura: 1.79

import 'dart:math';

void main() {
  final pessoa = Pessoa('Rafael');
  print('Nome: ${pessoa.nome}');
  print('Idade: ${pessoa.getIdade}');
  print('Altura: ${pessoa.getAltura.toStringAsFixed(2)}');
}

class Pessoa {
  var random = Random();

  Pessoa(this.nome);

  late String nome;
  late int idade;
  late double altura;

  int get getIdade {
    idade = random.nextInt(100);
    return this.idade;
  }

    set setIdade(int idade) {
    if (idade >= 0) {
      this.idade = idade;
    } else
      print('Idade não válida');
  }

  double get getAltura {
    altura = random.nextDouble() * 1.3 + 1;
    return this.altura;
  }
}
