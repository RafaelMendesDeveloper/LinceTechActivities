// Escreva um programa que receba uma lista de numeros inteiros, e retorne o somatorio dos numeros na lista.
// Implemente essa funcao de tres formas distintas:

// Utilizando o comando for;
// Utilizando o comando while;
// Utilizando um metodo recursivo;
// Utilizando metodos de lista;
// Numeros: 3, 17, 23, 49, 328, 1358, 21, 429, 12, 103, 20021

// Tempo do desafio: 10 minutos

//Inicio 18:25

void main() {
  const Numeros = [3, 17, 23, 49, 328, 1358, 21, 429, 12, 103, 20021];
  somaFor(Numeros);
  somaWhile(Numeros);
  print('recursivo: ${somaRecursivo(Numeros)}');
  print('recursivo: ${somaLista(Numeros)}');
}

somaFor(List<int> lista) {
  var somaTotal = 0;
  for (var i = 0; i < lista.length; i++) {
    somaTotal += lista[i];
  }
  print('for: $somaTotal');
}

somaWhile(List<int> lista) {
  var cont = 0;
  var somaTotal = 0;
  while (cont <= lista.length-1) {
    somaTotal += lista[cont];
    cont++;
  }
  print('while: $somaTotal');
}

somaRecursivo(List<int> lista) {
  if (lista.length == 0) {
    return 0;
  } else {
    return lista.first + somaRecursivo(lista.sublist(1));
  }
}

somaLista(List<int> lista) => lista.reduce((value, element) => value + element);

//Fim 18:39

//Tempo estimado: 10 minutos
//Tempo decorrido: 14 minutos :(
