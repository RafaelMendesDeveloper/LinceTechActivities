// Crie uma classe chamada Retangulo com os atributos largura e altura
// Adicione um metodo chamado calcularArea que retorna a area do retangulo
// E imprima no console da seguinte forma:
// Area do retangulo: 99.999999999

void main() {
  final retangulo = Retangulo(100.2, 32);
  // final areaDoRetangulo = retangulo.calcularArea();
  print('Area do retangulo: ${retangulo.calcularArea()}');
}

class Retangulo {
  Retangulo(this.largura, this.altura);
  late double largura;
  late double altura;

  calcularArea() {
    final area = largura * altura;
    return area;
  }
}
