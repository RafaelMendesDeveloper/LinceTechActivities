// Crie uma classe para controlar uma fila de um mercado, seguindo as especificacoes:

// Noo utilizar a classe List, deve ser utilizada uma classe do pacote 'dart:collections' especializada nesse tipo de manipulacao de colecoes
// (manipular extremidades de colecoes - primeiro e ultimo item)
// Quem entra na fila primeiro, sera atendido primeiro;
// Cada pessoa da fila deve ter um nome e sobrenome gerado aleatoriamente. O gerador de nomes deve ser uma classe separada,
// çque tenha apenas o metodo gerarNomeAleatorio;
// Quando uma pessoa entra na fila, deve ser exibido no console *(Fulano Silva) entrou na fila
// Quando uma pessoa for atendida, deve ser exibido no console uma mensagem dizendo *(Fulano Silva) foi atendido(a)
// No metodo main, a fila deve ser populada com 10 pessoas;
// No metodo main, as pessoas devem ser atendidas corretamente de acordo com a ordem que entraram na fila, ate a fila ser esgotada
// ** substituir (Fulano Silva) pelo nome da pessoa

import 'dart:collection';
import 'dart:math';

void main() {
  Queue<String> Fila = Queue();
  Fila = Nomes().gerarNomeAleatorio();
  while (Fila.isNotEmpty) {
    var pessoadavez = Fila.removeFirst();
    print('$pessoadavez entrou na fila...');
    print('$pessoadavez foi atendido(a)!!');
  }
}

class Nomes {
  var random = Random();
  Queue<String> NomesGerados = Queue();
  gerarNomeAleatorio() {
    List<String> Nomes = [
      'Pedro',
      'Maria',
      'Thiago',
      'Nathalia',
      'Rafael',
      'Guilherme',
      'Victor',
      'Diego',
      'Sofia',
      'Julia',
      'Flávia',
      'Maicon',
      'Jean',
      'Lorenna',
      'Laura',
      'Duda',
      'Fiona',
      'Debbie',
      'Frank',
      'Carl',
      'Ian',
      'Lip'
    ];

    List<String> Sobrenomes = [
      'Soares',
      'Spindola',
      'Diegues',
      'Mendes',
      'Cabral',
      'Silva',
      'Gomes',
      'Carvalho',
      'Cardoso',
      'Aleixo',
      'Tavares',
      'Junior',
      'Cheida',
      'Leite',
      'Alves',
      'Garcez',
      'Gallagher',
      'Grey',
      'Sheperd',
      'Sloan',
      'Secco',
      'Cruz'
    ];

    for (var i = 0; i < 10; i++) {
      NomesGerados.add(Nomes[random.nextInt(Nomes.length)] +
          ' ' +
          Sobrenomes[random.nextInt(Sobrenomes.length)]);
    }
    return NomesGerados;
  }
}
