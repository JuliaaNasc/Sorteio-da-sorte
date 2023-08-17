import 'dart:math';

import '../modelos/partida.dart';
import 'pedir_numero.dart';

Partida criacaoPartida() {
  int minimo = pedirNumero('ESCOLHA UM NÚMERO MÍNIMO: ');

  int maximo = pedirNumero('AGORA ESCOLHA O VALOR MÁXIMO: ');

  int sorteado = Random().nextInt(maximo + 1);
  if (sorteado < minimo) {
    sorteado = minimo;
  }
  return Partida(
    minimo: minimo,
    maximo: maximo,
    sorteado: sorteado,
    numerosSugeridos: [],
  );
}
