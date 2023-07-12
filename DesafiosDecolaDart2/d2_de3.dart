// Crie um programa para controlar uma biblioteca de musicas, a biblioteca tera uma lista de musicas disponiveis.
// O programa devera imprimir no console as musicas cadastradas, o numero de musicas e o tempo total em horas das musicas da biblioteca.

// As musicas devem ter as seguintes informacoes:

// Titulo da musica
// Nome do artista
// Nome do album
// Duracao em segundos
// A biblioteca deve permitir buscar musica pelo titulo, nome dor artista e nome do album.
// Deve ser incluido no programa a execucao de todas essas buscas de utilizando esses parametros apos imprimir a biblioteca
// Tempo do desafio: 60 minutos
//Inicio 11:30
void main() {
  final biblioteca = Biblioteca();

  // Cadastro das músicas
  biblioteca.cadastrarMusica(Musica('Estilo Cachorro', 'ManoBrown', 'Sobrevivendo no Inferno', 920));
  biblioteca.cadastrarMusica(Musica('Flamengo', 'Jorge Jesus', 'Coringas do Mengão', 157));
  biblioteca.cadastrarMusica(Musica('Purple Haze', 'Jimi Hendrix', 'Are You Experienced', 209));
  biblioteca.cadastrarMusica(Musica('Bohemian Rhapsody', 'Queen', 'A Night at the Opera', 355));
  biblioteca.cadastrarMusica(Musica('Hotel California', 'Eagles', 'Hotel California', 391));

  // Imprimir todas as músicas cadastradas
  biblioteca.imprimirMusicas();

  // Imprimir o número de músicas na biblioteca
  print('Número de músicas: ${biblioteca.getNumeroMusicas()}');

  // Imprimir o tempo total em horas das músicas da biblioteca
  print('Tempo total em horas: ${biblioteca.getTempoTotalHoras()}');

  // Busca de músicas pelo título, nome do artista e nome do álbum
  print('\nBusca por título: ${biblioteca.buscarPorTitulo("Flamengo")}');
  print('Busca por nome do artista: ${biblioteca.buscarPorArtista("Jimi Hendrix")}');
  print('Busca por nome do álbum: ${biblioteca.buscarPorAlbum("A Night at the Opera")}');
}

class Musica {
  final String titulo;
  final String artista;
  final String album;
  final int duracao;

  Musica(this.titulo, this.artista, this.album, this.duracao);
}

class Biblioteca {
  final List<Musica> musicas = [];

  void cadastrarMusica(Musica musica) {
    musicas.add(musica);
  }

  void imprimirMusicas() {
    for (var musica in musicas) {
      print('Título: ${musica.titulo}');
      print('Artista: ${musica.artista}');
      print('Álbum: ${musica.album}');
      print('Duração: ${musica.duracao} segundos');
      print('---');
    }
  }

  int getNumeroMusicas() {
    return musicas.length;
  }

  double getTempoTotalHoras() {
    int duracaoTotal = 0;
    for (var musica in musicas) {
      duracaoTotal += musica.duracao;
    }
    return duracaoTotal / 3600; // Converter para horas
  }

  List<Musica> buscarPorTitulo(String titulo) {
    return musicas.where((musica) => musica.titulo.toLowerCase() == titulo.toLowerCase()).toList();
  }

  List<Musica> buscarPorArtista(String artista) {
    return musicas.where((musica) => musica.artista.toLowerCase() == artista.toLowerCase()).toList();
  }

  List<Musica> buscarPorAlbum(String album) {
    return musicas.where((musica) => musica.album.toLowerCase() == album.toLowerCase()).toList();
  }
}
