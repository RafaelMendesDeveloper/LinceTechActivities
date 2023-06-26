// Crie um programa que percorra um mapa inicializado conforme apresentado na tabela abaixo.
// Para cada chave-valor no mapa, informe caso a pessoa tenha preenchido a idade ou nao.
// Para essa atividade nao eh permitido utilizar os comandos if/else.
// Nome	Idade
// Nelson
// Jane
// Jack	16
// Rupert	37
// Andy	13
// Kim	27
// Robert	31

void main() {
  Map<String, int?> Pessoas = Map<String, int?>();
  Pessoas['Nelson'] = null;
  Pessoas['Jane'] = null;
  Pessoas['Jack'] = 16;
  Pessoas['Rupert'] = 37;
  Pessoas['Andy'] = 13;
  Pessoas['Kim'] = 27;
  Pessoas['Robert'] = 31;

  Pessoas.forEach((key, value) {
    dynamic idade = value;
    idade = value ?? 'idade não informada';
    print('$key - $idade');
  });
}
