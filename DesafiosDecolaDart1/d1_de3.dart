// Escreva um programa que receba um paragrafo, e imprima no console as seguintes informacoes:
// Texto do paragrafo;
// Numero de palavras;
// Tamanho do texto;
// Numero de frases;
// Numero total de vogais;
// Consoantes presentes no texto;
// Tempo do desafio: 40 minutos
// Paragrafo:
// Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis nunc et posuere vehicula. Mauris lobortis quam id lacinia porttitor.

// Saida esperada no console:
// Paragrafo: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis nunc et posuere vehicula. Mauris lobortis quam id lacinia porttitor.
// Numero de palavras: 20
// Tamanho do texto: 139
// Numero de frases: 3
// Numero de vogais: 50
// Consoantes encontradas: b, c, d, g, h, l, m, n, p, q, r, s, t, v

//Inicio 16:35
void main() {
  const frase =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis nunc et posuere vehicula. Mauris lobortis quam id lacinia porttitor.';
  final palavras = contarPalavras(frase);
  final tamanho = verTamanho(frase);
  final frases = contarFrases(frase);
  final vogais = contarVogais(frase);
  final consoantes = contarConsoantes(frase);

  print('Parágrafo: $frase');
  print('Número de palavras: ${palavras}');
  print('Tamanho do texto: ${tamanho}');
  print('Número de frases: ${frases}');
  print('Número de vogais: ${vogais}');
  print('Consoantes encontradas: ${consoantes}');
}

contarPalavras(String frase) {
  final lista = frase.split(' ');
  return lista.length;
}

verTamanho(String frase) => frase.length;

contarFrases(String frase) {
  final ListaFrase = frase.split('. ');
  return ListaFrase.length;
}

contarVogais(String frase) {
  var quantidadeVogais = 0;
  for (final it in frase.runes.toList()) {
    final character = String.fromCharCode(it).toLowerCase();
    if (character == 'a' ||
        character == 'e' ||
        character == 'i' ||
        character == 'o' ||
        character == 'u') {
      quantidadeVogais++;
    }
  }
  return quantidadeVogais;
}

contarConsoantes(String frase) {
  String consoantes = 'bcdfghjklmnpqrstvwzyz';
  Set<String> ConsoantesTodas = {};
  for (final it in frase.runes.toList()) {
    final character = String.fromCharCode(it).toLowerCase();
    if(consoantes.contains(character)) {
      ConsoantesTodas.add(character);
    }
  }
  List organizadas = ConsoantesTodas.toList();
  organizadas.sort();
  String organizadasString = organizadas.join(', ');
  return organizadasString;
}

//Fim 17:14

//Tempo estimado 40 minutos
//Tempo decorrido 39 minutos :\