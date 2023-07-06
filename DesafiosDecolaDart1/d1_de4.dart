// Escreva um programa que some 18 dias de semana (ignorar sabado e domingo)
//  partindo da data atual, e imprima a data atual e data calculada formatada no padrao dia/mes/ano (ex.: 01/01/2022).

// Tempo do desafio: 20 minutos

// Considerando a data atual como 05/09/2022
// Saida esperada no console:

// Data atual: 05/09/2022
// Data calculada: 29/09/2022

//Inicio 17:40
void main() {
  final DiaInicial = DateTime(2022, 9, 5);
  final DiaFinal = somarDias(DiaInicial);
  print(DiaFinal);
}

somarDias(DateTime Dia1) {
  var cont = 0;
  late DateTime DiaFinal = Dia1;
  while (cont < 18) {
    DiaFinal = DiaFinal.add(Duration(days: 1));
    if (DiaFinal.weekday != DateTime.saturday &&
        DiaFinal.weekday != DateTime.monday) cont++;
  }
  return DiaFinal.toIso8601String().split('T').first;
}

//Fim 18:01

//Tempo estimado: 20 minutos
//Tempo decorrido: 21 minutos :(
