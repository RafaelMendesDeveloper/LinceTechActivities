// Crie um programa para controlar uma biblioteca de musicas, a biblioteca tera uma lista de musicas disponiveis.
// O programa devera imprimir no console as musicas cadastradas, o numero de musicas e o tempo total em horas das musicas da biblioteca.

// As musicas devem ter as seguintes informacoes:

// Titulo da musica
// Nome do artista
// Nome do album
// Duracao em segundos
// A biblioteca deve permitir buscar musica pelo titulo, nome dor artista e nome do album.
// Deve ser incluido no programa a execucao de todas essas buscas de utilizando esses parametros apos imprimir a biblioteca.

// Tempo do desafio: 60 minutos

//Inicio 11:30
void main() {
  final musica1 =
      musicas('Estilo Cachorro', 'ManoBrown', 'Sobrevivendo no Inferno', 920); 
  List ListMusica1 = musica1.adicionarLista();
  Biblioteca().adicionarMusicas(musica1.titulo, ListMusica1);
  final musica2 =
      musicas('Flamengo', 'Jorge Jesus', 'Coringas do Mengão', 157);
  List ListMusica2 = musica2.adicionarLista();
  Biblioteca().adicionarMusicas(musica2.titulo, ListMusica2);
  print('Musicas Cadastradas: ${Biblioteca().listaDeMusicas.keys}');
}

class musicas {
  late String titulo;
  late String artista;
  late String album;
  late int duracao;

  musicas(this.titulo, this.artista, this.album, this.duracao);

  adicionarLista() {
    List listaDasMusicas = [artista, album, duracao];
    return listaDasMusicas;
  }
}

class Biblioteca {
  Map<String, List> listaDeMusicas = Map<String, List>();

  adicionarMusicas(String musica, List informacoes) {
    listaDeMusicas.addAll({
      musica: [informacoes]
    });
    return listaDeMusicas;
  }
}
