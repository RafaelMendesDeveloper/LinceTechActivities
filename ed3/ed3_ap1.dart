// Crie um programa que atenda os requisitos abaixo:
// Inicialize duas listas com 5 numeros aleatorios entre 0 e 100
// Crie uma funcao receba uma lista como parametro e a imprima na seguinte formatacao Lista: 10, 5, 39, 45, 1
// Crie uma funcao que receba duas listas, e retorne uma nova lista de mesmo tamanho contendo a soma dos itens de mesmo indice nas duas listas iniciais (ver exemplo).
// Imprima as acoes realizadas e a lista final
// [Bonus] Validacoes:
// Caso tente imprimir uma lista vazia, imprimir apenas Lista vazia
// Caso as listas tenham tamanhos diferentes, retornar uma lista vazia

import 'dart:math';

void main() {
  var random = Random();

  List<int> lista1 = [];
  List<int> lista2 = [];

  for (var cont = 0; cont < 5; cont++) {
    lista1.add(random.nextInt(101));
    lista2.add(random.nextInt(101));
  }

  if (lista1.isEmpty) {
    print("LISTA VAZIA!");
  } else {
    imprimirLista(lista1);
    imprimirLista(lista2);
    imprimirLista(somarListas(lista1, lista2));
  }
}

imprimirLista(List lista) {
  String listaFormatada = lista.join(', ');
  print('Lista: $listaFormatada');
}

List<int> somarListas(List<int> lista1, List<int> lista2) {
  List<int> listaResultado = [];
  if (lista1.length != lista2.length)
    return listaResultado;
  else {
    for (var cont = 0; cont < 5; cont++) {
      listaResultado.add(lista1[cont] + lista2[cont]);
      print('${lista1[cont]} + ${lista2[cont]}');
    }
    return listaResultado;
  }
}
