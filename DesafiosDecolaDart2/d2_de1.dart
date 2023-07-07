// Utilizando os conceitos de orientacao a objetos, complete o programa sem alterar o codigo ja existente,
//  para que o programa imprima aleatoriamente no console uma das tres saidas abaixo.

// [TELEFONE] Ligando para (47) 99876-5432...
// [CELULAR] Ligando para (47) 99876-5432...
// [ORELHAO] Ligando para (47) 99876-5432...

// Tempo do desafio: 10 minutos

//Inicio 10:22

import 'dart:math' as math;

void main() {
  final meioDeComunicacao = aleatorio();
  meioDeComunicacao.fazerLigacao('(47) 99876-5432');
}

MeioDeComunicacao aleatorio() {
  final meiosDeComunicacao = <MeioDeComunicacao>[
    Telefone(),
    Celular(),
    Orelhao(),
  ];

  final random = math.Random();

  return meiosDeComunicacao[random.nextInt(
    meiosDeComunicacao.length,
  )];
}

class MeioDeComunicacao {
  void fazerLigacao(String numero) {
  }
}

class Telefone extends MeioDeComunicacao {
  @override
  void fazerLigacao(String numero) {
    print('[TELEFONE] Ligando para $numero...');
  }
}

class Celular extends MeioDeComunicacao {
  @override
  void fazerLigacao(String numero) {
    print('[CELULAR] Ligando para $numero...');
  }
}

class Orelhao extends MeioDeComunicacao {
  @override
  void fazerLigacao(String numero) {
    print('[ORELHAO] Ligando para $numero...');
  }
}

//Fim 10:42

//Tempo Estimado: 10 minutos
//Tempo Decorrido: 20 minutos :<