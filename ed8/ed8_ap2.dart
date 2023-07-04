// AP2 - Animais
// Crie uma classe chamada abstrata Animal que tenha defina os metodos comer e beber
// Crie uma classe concreta que herde de Animal, pode ser qualquer animal de sua preferencia
// Implemente um metodo qualquer relacionado ao animal em questao em sua classe concreta
// (ex.: para classe Cachorro pode ser implementado o metodo latir)
// Instancie a sua classe concreta, e chame os metodos comer, beber, e o metodo que voce definiu no item 3
// Exemplo de saida do programa para uma classe Cachorro
// O animal esta bebendo.
// O animal esta comendo.
// O chachorro esta latindo.

void main() {
  final cachorro = Cachorro();
  cachorro.latir();
  cachorro.comer();
  cachorro.beber();
}

abstract class Animal {
  comer() {
    print('O animal esta comendo');
  }

  beber() {
    print('O animal esta bebendo');
  }
}

class Cachorro extends Animal {
  latir() {
    print('O cachorro esta latindo');
  }
}
