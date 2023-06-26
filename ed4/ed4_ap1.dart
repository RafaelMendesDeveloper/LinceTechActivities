void main() {
//   Escreva uma funcao chamada ehAnoBissexto que receba um ano como entrada e retorna se o ano e bissexto ou nao.
//   No metodo main, demonstre no o metodo funcionando com os valores (bissextos) 2016, 1988, 2000 e nao bissextos 2100, 2300, 1993.

// Exemplo de saida:
// O ano 2016 eh bissexto
// O ano 1993 nao eh bissexto

  List<int> anos = [2016, 1988, 2000, 2100, 2300, 1993];
  anos.sort();
  anos.forEach((element) {
    var resultado = ehAnoBissexto(element)
        ? 'O ano ${element} eh bissexto'
        : 'O ano ${element} nao eh bissexto';
    print(resultado);
  });
}

ehAnoBissexto(int ano) {
  bool checagem = false;
  late int resto;
  resto = ano % 100;
  if (resto == 0) {
    resto = ano % 400;
    if (resto == 0) checagem = true;
  } else {
    resto = ano % 4;
    if (resto == 0) checagem = true;
  }
  return checagem;
}
