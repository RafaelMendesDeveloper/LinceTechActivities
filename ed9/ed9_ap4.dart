// Crie uma funcao para "buscar dados".
// A funcao deve ser assincrona e mostrar cada passo da busca como inicio, meio e fim.

void main() async {
  print('Iniciando busca...');

  await buscarDados();

  print('Busca finalizada!!');
}

buscarDados() async {
  await Future.delayed(Duration(seconds: 2));
  print('Buscando dados...');
}
