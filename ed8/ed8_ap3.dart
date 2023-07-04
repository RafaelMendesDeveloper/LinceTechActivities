// AP3 - Definicao de variaveis
// Crie duas classes abstratas a seu criterio (as classes devem ser relacionadas a um mesmo contexto)
// Em cada classe criada, defina um metodo abstrato de sua preferencia
// Cria uma class concreta que implemente os comportamentos definidos pelas classes criadas no item 1
// Instancie a sua classe concreta e chame os metodos que voce implementou
// Exemplo de saida do programa com o contexto animal
// O camelo esta comendo.
// O camelo esta dormindo.

void main() {
  final gabigol = Jogador('Gabigol');
  gabigol.gol();
  gabigol.assistencia();
  gabigol.RoubadaDeBola();
  gabigol.CartaoAmarelo();
  gabigol.gol();
  print('${gabigol.nome} fez ${gabigol.pontuacao} pontos!');
}

abstract class Gol {
  void gol();
}

abstract class Assistencia {
  void assistencia();
}

abstract class RoubadaDeBola {
  RoubadaDeBola();
}

abstract class CartaoAmarelo {
  CartaoAmarelo();
}

abstract class CartaoVermelho {
  CartaoVermelho();
}

class Jogador implements Gol, Assistencia, RoubadaDeBola, CartaoAmarelo, CartaoVermelho{
  var pontuacao = 0;
  final String nome;
  Jogador(this.nome);

  void gol() {
    print('$nome fez gol!!');
    pontuacao += 8;
  }

  void assistencia() {
    print('$nome deu assistência!!');
    pontuacao += 5;
  }

  void RoubadaDeBola() {
    print('$nome roubou uma bola!!');
    pontuacao += 3;
  }

  void CartaoAmarelo() {
    print('$nome tomou cartão amarelo!!');
    pontuacao -= 1;
  }

  void CartaoVermelho() {
    print('$nome tomou cartão vermelho!!');
    pontuacao -= 3;
  }

}
