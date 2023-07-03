// Crie uma classe chamada ContaBancaria com os atributos saldo e titular
// Adicione metodos para depositar e sacar dinheiro da conta
// E imprima no console conforme exemplo a baixo:
// Saldo atual: 9999.99

void main() {
  final Pessoa = ContaBancaria(1000, 'Rafa');
  Pessoa.depositar(192.2);
  Pessoa.sacar(32.12);
  Pessoa.depositar(1432.32);
  Pessoa.sacar(981.3);
  Pessoa.depositar(84.4);
  print('Saldo atual: ${Pessoa.saldoAtual.toStringAsFixed(2)}');
}

class ContaBancaria {
  late double saldoAtual;
  late String titular;

  ContaBancaria(this.saldoAtual, this.titular);

  depositar(double Valor) {
    saldoAtual += Valor;
    return saldoAtual;
  }

  sacar(double Valor) {
    if (saldoAtual > Valor) {
      saldoAtual -= Valor;
    } else
      print('Saldo Insuficiente');
    return saldoAtual;
  }
}
