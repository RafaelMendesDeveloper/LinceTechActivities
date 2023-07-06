import 'dart:js_util';

void main() {
  const frase = 'Oi, tudo bem com você? Eu te amo!';

  print('Parágrafo: $frase');

  final lista = frase.split(' ');
  print('Número de palavras: ${lista.length}');

  print('Tamanho do texto: ${frase.length}');

  final ListaFrase = frase.split('.');
  print('Número de frases: ${ListaFrase.length}');
  String consoantes = 'bcdfghjklmnpqrstvwzyz';
  var quantidade = 0;
  Set ConsoantesTodas = {};
  for (final it in frase.runes.toList()) {
    final character = String.fromCharCode(it).toLowerCase();
    if (character == 'a' ||
        character == 'e' ||
        character == 'i' ||
        character == 'o' ||
        character == 'u') {
      quantidade++;
    } else if (consoantes.contains(character)){
      add(first, second)
    }


  }

  print('Quantidade de vogais: ${quantidade}');
}
