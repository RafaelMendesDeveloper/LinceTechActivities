// Ecreva um programa que receba uma lista de numeros inteiros e imprima no console em ordem crescente
//os numeros representados na forma decimal, binaria, octal e hexadecimal.

// Numeros: 3, 17, 23, 49, 328, 1358, 21, 429, 12, 103, 20021

// Tempo do desafio: 10 minutos
// Saida esperada no console:

// decimal: 3, binario: 11, octal: 3, hexadecimal: 3
// decimal: 12, binario: 1100, octal: 14, hexadecimal: c
// decimal: 17, binario: 10001, octal: 21, hexadecimal: 11
// decimal: 21, binario: 10101, octal: 25, hexadecimal: 15
// decimal: 23, binario: 10111, octal: 27, hexadecimal: 17
// decimal: 49, binario: 110001, octal: 61, hexadecimal: 31
// decimal: 103, binario: 1100111, octal: 147, hexadecimal: 67
// decimal: 328, binario: 101001000, octal: 510, hexadecimal: 148
// decimal: 429, binario: 110101101, octal: 655, hexadecimal: 1ad
// decimal: 1358, binario: 10101001110, octal: 2516, hexadecimal: 54e
// decimal: 20021, binario: 100111000110101, octal: 47065, hexadecimal: 4e35

//Inicio 18:19

void main() {
  final decimais = [3, 12, 17, 23, 49, 328, 1358, 21, 429, 12, 103, 20021];
  for (var num in decimais) {
    print(
        'decimal: $num, binario: ${num.toRadixString(2)}, octal: ${num.toRadixString(8)}, hexadecimal: ${num.toRadixString(16)}');
  }
}

//Fim 18:22

//Tempo estimado: 10 minutos
//Tempo decorrido: 3 minutos :)
