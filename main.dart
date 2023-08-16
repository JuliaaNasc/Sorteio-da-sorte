import 'dart:io';
import 'dart:math';

import 'funcoes/mostrar_menu.dart';
import 'funcoes/pedir_numero.dart';

void main() {
  print('VENHA PARTICIPAR DA NOSSA BRINCADEIRA... ');
  print('-----------------------------------------------------');
  print('');

  int minimo = pedirNumero('ESCOLHA UM NÚMERO MÍNIMO: ');

  int maximo = pedirNumero('AGORA ESCOLHA O VALOR MÁXIMO: ');

  int sorteado = Random().nextInt(maximo + 1);
  if (sorteado < minimo) {
    sorteado = minimo;
  }
  bool acertou = false;
  bool querContinuar = true;

  while (!acertou && querContinuar) {
    int sugestao =
        pedirNumero('ME FALE UM NOVO VALOR EM NÚMERO COMO SUGESTÃO:  ');

    if (sugestao < minimo || sugestao > maximo) {

      int resultadoMostrarMenu = mostrarMenu();

      switch (resultadoMostrarMenu) {
        case 1:
          break;

        case 2:
          minimo = pedirNumero('ESCOLHA UM NÚMERO MÍNIMO: ');
          maximo = pedirNumero('ESCOLHA UM NÚMERO MÁXIMO: ');
          sorteado = Random().nextInt(maximo + 1);
          if (sorteado < minimo) {
            sorteado = minimo;
          }
          break;

        case 3:
          querContinuar = false;
          break;

        default:
      }
    } else {
      if (sugestao == sorteado) {
        print('');
        print('O número escolhido foi: $sorteado');
        print('-----------------------------------------------------');

        print('VOCÊ DIGITOU O NÚMERO ESCOLHIDO!!!');
        acertou = true;
      } else {
        if (sugestao < sorteado) {
          print(
            'O número escolhido por você é MENOR do que o numero ESCOLHIDO !!!',
          );
        } else if (sugestao > sorteado) {
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
