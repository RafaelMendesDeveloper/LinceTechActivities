// Crie um programa que utilize um mapa para relacionar uma lista de cidades com a sigla do estado onde essa cidade e localizada.
// Com o mapa de cidades por estado, implemente as seguintes acoes:

// Utilizando as chaves do mapa, imprima as siglas dos estados, no formato Estados: XX ; XX ; XX ; XX
// Imprimir todas as cidades SC em ordem alfabetica (ex.: Cidades de SC: Blumenau ; Florianopilos ; Gaspar)

// Imprimir todas as cidades cidades em ordem alfabetica, no formato
// Belo Horizonte - MG
// Berlinda - MG
// Blumenau - SC
// ...
// Sao Paulo - SP

// Utilize os dados da tabela abaixo para incluir as cidades/estados no mapa:
// Estado	Cidade
// SC	Gaspar
// SC	Blumenau
// SC	Florianopolis
// PR	Curitiba
// PR	Cascavel
// PR	Foz do Iguacu
// SP	Sao Paulo
// SP	Guarulhos
// SP	Campinas
// MG	Belo Horizonte
// MG	Juiz de Fora
// MG	Berlinda

void main() {
  final Map<String, List<String>> localidades =
      Map<String, List<String>>(); //Criei o mapa. E deixei ele vazio

  localidades['SC'] = [
    'Blumenau',
    'Gaspar',
    'Florianópolis'
  ]; //Adicionei a chave SC, e os valores pra essa chave que são as cidades catarinenses
  localidades['PR'] = [
    'Curitiba',
    'Cascavel',
    'Foz do Iguaçu'
  ]; //Adicionei a chave PR, e os valores pra essa chava que são as cidades paranaenses
  localidades['SP'] = [
    'São Paulo',
    'Guarulhos',
    'Campinas'
  ]; //Adicionei a chave SP, e os valores pra essa chave que são as cidades paulistas
  localidades['MG'] = [
    'Belo Horizonte',
    'Juiz de Fora',
    'Berlinda'
  ]; //Adicionei a chave MG, e os valores pra essa chave que são as cidades mineiras

  print(
      'Estados: ${localidades.keys}'); // Imprimi pro usuário apenas as chaves do MAP, ou seja apenas as siglas dos estados

  final CidadeSC = localidades[
      'SC']!; //Criei uma lista para armazenar as cidades de SC, o ! serve para dizer pra máquina que este valor não é nulo
  CidadeSC
      .sort(); //Organizei as cidades que coloquei na variável em ordem alfabética
  print(
      'Cidades de SC: $CidadeSC'); //Imprimi pro usuário essas cidades já na ordem

  List<String> Cidades = localidades.values.expand((list) => list).toList();
  //Criei uma lista para armazenar todas as cidades que está armazenada nos valores do MAP localidades
  //O comando .expand((list)=>list) serve para transformar as listas de cidades em cada uma cidade individual.
  Cidades
      .sort(); //Estou organizando os items das cidades e armazenando elas na lista com TODAS ordenadas por ordem alfabética.

  for (String cidade in Cidades) {
    //Utilizei um for in QUE CRIA UMA VARIAVEL DE STRING, que basicamente serve para executar a repetição para cada item de Cidades
    String sigla = localidades.entries.firstWhere((entry) => entry.value.contains(cidade)).key;
    //Criei uma variavel de sigla que obtém através do código que é usado para encontrar a sigla do estado a partir de uma cidade fornecida.
    //o .entries retorna o valor da sigla e da cidade
    //o .firstWhere é um comando que identifica onde ocorre pela primeira vez a condição
    //(entry) => entry.value.contains(cidade) serve para ver se a lista de cidades contém a cidade que to procurando
    //o.key serve para ver qual o valor de sigla que acompanha o value achado anteriormente
    print('$cidade - $sigla'); //Printa do jeito formatado pro usuario
  }
}
