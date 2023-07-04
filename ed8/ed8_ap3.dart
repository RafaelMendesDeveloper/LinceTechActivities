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
}

abstract class Gol {
  void gol();
}

abstract class Assistencia {
  void assistencia();
}

class Jogador implements Gol, Assistencia {
  final String nome;
  Jogador(this.nome);

  void gol() {
    print('$nome fez gol!!');
  }

  void assistencia() {
    print('$nome deu assistência!!');
  }
}
