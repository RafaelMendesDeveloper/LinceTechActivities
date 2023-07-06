Future<void> main() async {
  List<String> urls = [
    'https://example.com/imagem1.jpg',
    'https://example.com/imagem2.jpg',
    'https://example.com/imagem3.jpg',
  ];

  await baixarImagens(urls);
}

Future<void> baixarImagem(String urls) async {
  await Future.delayed(Duration(seconds: 1));
  print('Baixando ${urls}...');
  print('${urls} Baixada com Sucesso.');
}

Future<void> baixarImagens(List<String> urls) async {
  print('Baixando a imagem...');
  for (var url in urls) {
    await baixarImagem(url);
  }
 print('Download Concluido!');
}
