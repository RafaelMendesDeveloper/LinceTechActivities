// Nao utilizar a classe List, exceto onde explicitamente permitido;
// Deve ser definida uma lista com vinte figuras;
// Cada figura deve ter um nome e um codigo unico;
// Deve ser criado uma classe de "pacote de figuras" que sera inicializado com 4 figuras aleatorias da lista (pode utilizar a classe List);
// O album e considerado completo, quando todas as figuras definidas no item 2 forem incluidas no album;
// O album nao pode ter figuras repetidas;
// O Album deve possuir um metodo para imprimir no console as figuras coladas. As figuras devem ser impressas em ordem conforme o codigo da figura.
// Criar uma estrutura extra, para armazenar as figuras repetidas (pode utilizar a classe List);
// No metodo main, faca uma logica para gerar novos pacotes de figuras e adicionar no album ate o album ser completado.
// No metodo main, imprima o numero de figuras repetidas, e chame o metodo de impressao do album.

import 'dart:math';

void main() {
  var random = Random();
  Set<String> Album = {};
  int figurinhasRepetidas = 0;
  Map<String, int> Figuras = <String, int>{
    'Neymar': 1,
    'Messi': 2,
    'Haaland': 3,
    'Vini Jr': 4,
    'Cristiano Ronaldo': 5,
    'Mbappé': 6,
    'De Bruyne': 7,
    'Salah': 8,
    'Mané': 9,
    'Enzo Fernandez': 10,
    'Kvaratskhela': 11,
    'Oshimen': 12,
    'Bernardo Silva': 13,
    'Van Dijk': 14,
    'Rafael Leão': 15,
    'Rodrygo': 16,
    'Valverde': 17,
    'Lewandowski': 18,
    'Kanté': 19,
    'Gvardiol': 20,
  };

  List valoresLista = Figuras.keys.toList();
  int? flag = 0;
  while (flag == 0) {
    PacoteDeFiguras pacote = PacoteDeFiguras(figurinhasRepetidas);
    flag = pacote.AdicionarFiguras(
        Album,
        valoresLista[random.nextInt(valoresLista.length)],
        valoresLista[random.nextInt(valoresLista.length)],
        valoresLista[random.nextInt(valoresLista.length)],
        valoresLista[random.nextInt(valoresLista.length)]);
    figurinhasRepetidas = pacote.figurinhasRepetidas;
  }

  for (var key in Figuras.keys) {
    for (var figurinha in Album) {
      if (figurinha == key) {
        final posicao = Figuras[key];
        print(
            'Colando $figurinha na posição ${posicao}');
      }
    }
  }
}

class PacoteDeFiguras {
  int flag = 0;
  int figurinhasRepetidas;

  PacoteDeFiguras(this.figurinhasRepetidas);

  AdicionarFiguras(Set Album, String figura1, String figura2, String figura3,
      String figura4) {
    Album.add(figura1);
    Album.add(figura2);
    Album.add(figura3);
    Album.add(figura4);

    if (Album.contains(figura1)) figurinhasRepetidas++;
    if (Album.contains(figura2)) figurinhasRepetidas++;
    if (Album.contains(figura3)) figurinhasRepetidas++;
    if (Album.contains(figura4)) figurinhasRepetidas++;

    if (Album.length == 20) {
      print('Figurinhas Repetidas: $figurinhasRepetidas');
      return flag = 1;
    } else {
      return flag = 0;
    }
  }
}
