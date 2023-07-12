// Nao utilizar a classe List, deve ser utilizada uma classe do pacote 'dart:collections'

// especializada nesse tipo de manipulacao de colecoes (manipular extremidades de colecoes - primeiro e ultimo item)
// O baralho permite empilhar uma carta por vez
// O baralho permite remover uma carta por vez, a carta removida deve sempre ser a carta que esta no topo do baralho;
// As cartas so podem ser criadas com os naipes validos (paus/copas/espadas/ouros)
// No metodo main, deve-se incluir no baralho as seguintes cartas, na ordem especificada:
// A â§ (paus - U+2663)
// A â¡ (copas - U+2665)
// A â¤ (espadas - U+2660)
// A â¢ (ouros - U+2666)
// Ainda no metodo main, deve ser utilizada uma estrutura de repeticao (loop), para remover todas as cartas do baralho,
//  seguindo a regra definida no item 2 (uma carta removida por vez, sendo a carta que esta no topo do baralho).
// Tempo do desafio: 35 minutos

import 'dart:collection';

void main() {
  Queue<String> baralho = Queue<String>();

  baralho.add('A ♣');
  baralho.add('A ♥');
  baralho.add('A ♠');
  baralho.add('A ♦');

  while (baralho.isNotEmpty) {
    String cartaRemovida = baralho.removeLast();
    print('Tirando a carta $cartaRemovida do monte...');
  }
}
