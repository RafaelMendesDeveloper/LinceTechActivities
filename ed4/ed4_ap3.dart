// Implemente uma funcao que receba uma lista e um elemento opcional como parametros, com objetivo de remover o elemento fornecido da lista.
// A lista e o elemento podem ser nulos.
// Retorne a lista modificada tratando os casos em que os argumentos nao forem fornecidos utilizando operadores 
// (nao eh permitido utilizar if/else).
// O retorno nao pode ser nulo

void main() {

  final listaOriginal = [
    'Rafael',
    'Bailer',
    'Rogério',
    'Jõao',
    'Guilherme',
    'Camily',
    'Thales',
  ];

  final novaLista = removerElemento(
    lista: listaOriginal,
    elemento: 'Rafael',
  );

  for (var item in novaLista) {
    print('Item: $item');
  }
}

List<String> removerElemento({
  List<String>? lista,
  String? elemento,
}) {


  lista?.remove(elemento);

  return lista ?? [];
}
