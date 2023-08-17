import 'dart:io';
import 'dart:math';

import 'funcoes/criarcao_de_partida.dart';
import 'funcoes/mostrar_menu.dart';
import 'funcoes/pedir_numero.dart';
import 'modelos/partida.dart';

void main() {
  print('VENHA PARTICIPAR DA NOSSA BRINCADEIRA... ');
  print('-----------------------------------------------------');
  print('');



  Partida partida = criacaoPartida();


  bool acertou = false;
  bool querContinuar = true;

  while (!acertou && querContinuar) {
    int sugestao =
        pedirNumero('ME FALE UM NOVO VALOR EM NÚMERO COMO SUGESTÃO:  ');

    if (partida.numerosSugeridos.contains(sugestao)) {
      print('ESSE NÚMERO JÁ FOI INSERIDO ANTERIOMENTE...');
    }
    partida.numerosSugeridos.add(sugestao);

    if (sugestao < partida.minimo || sugestao > partida.maximo) {
      int resultadoMostrarMenu = mostrarMenu();

      switch (resultadoMostrarMenu) {
        case 1:
          break;

        case 2:
          partida.minimo = pedirNumero('ESCOLHA UM NÚMERO MÍNIMO: ');
          partida.maximo = pedirNumero('ESCOLHA UM NÚMERO MÁXIMO: ');
          partida.sorteado = Random().nextInt(partida.maximo + 1);
          if (partida.sorteado < partida.minimo) {
            partida.sorteado = partida.minimo;
          }
          break;

        case 3:
          querContinuar = false;
          break;

        default:
      }
    } else {
      if (sugestao == partida.sorteado) {
        print('');
        print('O número escolhido foi: ${partida.sorteado} ');
        print('-----------------------------------------------------');

        print('VOCÊ DIGITOU O NÚMERO ESCOLHIDO!!!');
        acertou = true;
      } else {
        if (sugestao < partida.sorteado) {
          print(
            'O número escolhido por você é MENOR do que o numero ESCOLHIDO !!!',
          );
        } else if (sugestao > partida.sorteado) {
          print('-----------------------------------------------------');
          print('o número que você digitou é MAIOR que o número ESCOLHIDO !!!');
        }
        print('-----------------------------------------------------');
        print('VOCÊ DESEJA CONTINUAR? (sim/ não)');
        String resposta = stdin.readLineSync() ?? 'NÃO';

        if (resposta != 'sim') {
          querContinuar = false;
        }
      }
    }
  }

  print('');
  print('-----------------------------------------------------');
  print('SEU CÓDIGO RODOU BEM, CASO PREFERIR, TENTE NOVAMENTE!');
  print('');
}
