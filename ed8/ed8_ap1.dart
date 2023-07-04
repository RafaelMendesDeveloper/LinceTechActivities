// Crie um enumerador que definindo tipos de generos musicais
// Utilize a classe Random escolher um genero musical aleatoriamente
// Imprimir o genero musical escolhido conforme:
// Meu genero musical preferido e o XXXXXXX

import 'dart:math';

enum Musicas {
  pagode,
  samba,
  funk,
  rap,
  trap,
  rock,
  mpb,
  pop,
}

void main() {
  var random = Random();
  final musicaFavorita = Musicas.values[random.nextInt(Musicas.values.length)];
  print('Meu genero musical preferido e o ${musicaFavorita.name}');
}
