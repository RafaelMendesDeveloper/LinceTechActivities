// Escreva uma funcao que receba uma lista de numeros inteiros e imprima no console
// em ordem crescente os numeros representados na forma decimal, binaria, octal e hexadecimal.

// Requisitos
// A lista de temperaturas deve ser inicializada com 15 numeros inteiros entre 1 e 5000, gerados aleatoriamente.
// Defina uma funcao para conversao de cada base (decimal, binario, octal, hexadecimal).
// Os dados devem ser impressos conforme exemplo: decimal: 17, binario: 10001, octal: 21, hexadecimal: 11

//FIQUEI TEMPO A MAIS POR NÃO SABER O COMANDO
import 'dart:math';

void main() {
  final random = Random();

  final List<int> lista = [];
  for (var cont = 0; cont < 15; cont++) {
    lista.add(random.nextInt(5000) + 1);
  }

  lista.sort();

  for (var cont = 0; cont < 15; cont++) {
    var binario = transformarBinario(lista[cont]);
    var octal = transformarOctal(lista[cont]);
    var hexadecimal = transformarHexadecimal(lista[cont]);

    print(
        'decimal:${lista[cont]} binario:$binario octal:$octal hexadecimal:$hexadecimal');
  }
}

transformarBinario(int num) => num.toRadixString(2);
transformarOctal(int num) => num.toRadixString(8);
transformarHexadecimal(int num) => num.toRadixString(16);
