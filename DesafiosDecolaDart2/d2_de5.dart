// DE5 - Trabalhando com lista
// Baseado na situacao descrita abaixo, escreva um programa utilizando a estrutura "lista"

// IMPORTANTE: para a realizacao desse exercicio, nao deve ser utilizado dynamic.

// Crie uma classe para auxiliar no controle de itens que devem ser comprados numa visita ao mercado.
// O programa deve possuir o nome dos itens a serem comprados, e a quantidade desejada. Essa classe deve possuir as seguintes acoes:
// Incluir novos itens desejados;
// Separar os itens ja comprados dos itens desejados;
// Separar os itens que nao havia estoque dos itens desejados;
// Exibir no console os itens desejados, com as suas quantidades;
// Escolher um item pendente aleatoriamente;
// Mostrar um indicador de progresso, com o numero de itens desejados versus o numero de itens comprados (ex.: " Progresso: 7/12");
// No metodo main, instanciar a classe criada e simular a criacao de uma lista de compras com pelo menos 3 itens,
// e demonstrar o funcionamento marcando 2 itens como comprados, e 1 como item sem estoque.
// Tempo do desafio: 45 minutos
void main() {
  items Mercado = items();
  Mercado.AdicionarItemLista('Abacaxi', 1);
  Mercado.AdicionarItemLista('Abacate', 3);
  Mercado.AdicionarItemLista('Laranja', 1);
  Mercado.AdicionarItemLista('Limão', 10);
  Mercado.AdicionarItemLista('Morango', 2);
  // Mercado.MostrarEstoque();
  Mercado.Comprar();
}

class items {
  List<String> Items = [
    'Abacaxi',
    'Abacate',
    'Manga',
    'Morango',
    'Blueberry',
    'Laranja',
    'Limão',
    'Figo',
    'Melancia'
  ];
  List<int> Quantidades = [5, 4, 3, 2, 1, 4, 5, 2, 9];
  List<int> verificador = [];
  List<String> itemsDesejados = [];

  AdicionarItemLista(String nome, int quantidade) {
    itemsDesejados.add(nome);
    for (var i = 0; i < Items.length; i++) {
      if (nome.toLowerCase() == Items[i].toLowerCase()) {
        Quantidades[i] -= quantidade;
        if (Quantidades[i] >= 0) {
          verificador.add(1);
        } else
          verificador.add(0);
        break;
      }
    }
    if (verificador.length < itemsDesejados.length) {
      verificador.add(0);
    }
  }

  Comprar() {
    var cont = 0;
    List<String> ItemsSemEstoque = [];
    for (var i = 0; i < itemsDesejados.length; i++) {
      if (verificador[i] == 1) {
        cont++;
        print('Item: ${itemsDesejados[i]} COMPRADO!');
      } else {
        ItemsSemEstoque.add(itemsDesejados[i]);
        print('Item: ${itemsDesejados[i]} SEM ESTOQUE!');
      }
      print('Progresso: ${cont}/${itemsDesejados.length}');
    }
  }

  MostrarEstoque() {
    for (var i = 0; i < Items.length; i++) {
      if (Quantidades[i] > 0) {
        print('Item: ${Items[i]}, Quantidade: ${Quantidades[i]}');
      }
    }
  }

  AdicionarItemEstoque(String nome, int quantidade) {
    int flag = 0;

    for (var i = 0; i < Items.length; i++) {
      if (nome == Items[i]) {
        flag = 1;
        Quantidades[i] += quantidade;
      }
    }
    if (flag == 0) {
      Items.add(nome);
      Quantidades.add(quantidade);
    }
  }
}
// class Mercado {
//   List<String> Items = ['Refrigerante', 'Bolo', 'Maçã', 'Abacaxi', 'Pêra'];
//   List<int> Quantidades = [5, 4, 3, 3, 2];
// }
