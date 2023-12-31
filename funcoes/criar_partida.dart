import 'dart:io';
import 'dart:math';

import '../modelos/partida.dart';
import 'pedir_numero.dart';

Partida criarPartida() {
  print('INFORME O SEU NOME: ');
  String nomeUsuario = stdin.readLineSync() ?? '1';
  print('-------------------------------------------------------');

  int minimo = pedirNumero('ESCOLHA UM NÚMERO MÍNIMO: ');

  int? maximo = null;

  while (maximo == null) {
    maximo = pedirNumero('ESCOLHA UM NÚMERO MÁXIMOO: ');

    if (maximo <= minimo) {
      maximo = null;
    }
  }

  int sorteado = Random().nextInt(maximo + 1);
  if (sorteado < minimo) {
    sorteado = minimo;
  }
  return Partida(
    minimo: minimo,
    maximo: maximo,
    sorteado: sorteado,
    numerosSugeridos: [],
    nomeUsuario: nomeUsuario.toUpperCase(),
  );
}
