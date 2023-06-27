// Considerando o codigo base,
// escreva a implementacao da funcao contarNome
// que retorne corretamente a quantidade de repeticoes de um nome na lista.

void main() {
  final listaNomes = [
    "Joao",
    "Maria",
    "Pedro",
    "Maria",
    "Ana",
    "Joao",
    "Maria",
    "Fernanda",
    "Carlos",
    "Maria"
  ];

  final nome = 'Maria';
  final quantidade = contarNome(listaNomes, nome);

  if (quantidade == 1) {
    print('O nome $nome foi encontrado 1 vez');
  } else if (quantidade > 0) {
    print('O nome $nome foi encontrado $quantidade vezes');
  } else {
    print('O nome nao foi encontrado');
  }
}

contarNome(List<String> lista, String nome) {
  int quantidade = 0;
  for (var i = 0; i < lista.length; i++) {
    var valid = lista[i].contains(nome);
    if (valid == true) {
      quantidade++;
    }
  }
  return quantidade;
}
