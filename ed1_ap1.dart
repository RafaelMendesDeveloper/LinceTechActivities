void main() {
  String nome = "Rafael";
  String sobrenome = "Mendes Pinto";
  int idade = 18;
  bool ativo = true;
  double peso = 80.2;
  String? nacionalidade;

  print("Nome completo: $nome $sobrenome");

  if (idade >= 18)
    print("Idade: $idade(maior de idade).");
  else
    print("Idade: $idade(menor de idade)");

  if (ativo)
    print("Situação: Ativo");
  else
    print("Situação: Inativo");

  print("Peso: $peso");

  if (nacionalidade == null) {
    print("Nacionalidade: Não Informada");
  } else
    print("Nacionalidade: $nacionalidade");
}

