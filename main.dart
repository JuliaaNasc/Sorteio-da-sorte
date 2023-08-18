import 'dart:io';
import 'funcoes/criar_partida.dart';
import 'funcoes/mostrar_historico.dart';
import 'funcoes/mostrar_menu.dart';
import 'funcoes/pedir_numero.dart';
import 'modelos/partida.dart';

void main() {
  print('VENHA PARTICIPAR DA NOSSA BRINCADEIRA... ');
  print('-----------------------------------------------------');
  print('');

  List<Partida> historicoPartidas = [];

  Partida partida = criarPartida();

  bool querContinuar = true;

  while (querContinuar) {
    int sugestao =
        pedirNumero('ME FALE UM NOVO VALOR EM NÚMERO COMO SUGESTÃO:  ');

    if (partida.numerosSugeridos.contains(sugestao)) {
      print('ESSE NÚMERO JÁ FOI INSERIDO ANTERIOMENTE...');
    }

    partida.numerosSugeridos.add(sugestao);

    print('');
    print('-----------------------------------------------------');
    print('TENTATIVA: ${partida.numerosSugeridos.length}');
    print('-----------------------------------------------------');
    print('');

    if (sugestao < partida.minimo || sugestao > partida.maximo) {
      print(
          'VERIFIQUEI QUE O NÚMERO QUE VOCÊ COLOCOU ESTÁ FORA DOS PARAMETROS ESTABELECIDOS...');
      print('-----------------------------------------------------');
      int resultadoMostrarMenu = mostrarMenu([
        'SE DESEJA CONTINUAR',
        'SE DESEJA REDEFINIR OS VALORES',
        'SE DESEJA PARAR',
      ]);

      switch (resultadoMostrarMenu) {
        case 1:
          break;

        case 2:
          partida = criarPartida();
          break;

        case 3:
          querContinuar = false;
          break;

        default:
      }
    } else {
      if (sugestao == partida.sorteado) {
        historicoPartidas.add(partida);

        print('');
        print('O número escolhido foi: ${partida.sorteado} ');
        print('-----------------------------------------------------');

        print('VOCÊ DIGITOU O NÚMERO ESCOLHIDO!!!');
        print('');

        int menufinal = mostrarMenu([
          'VOCÊ DESEJA CONSULTAR O HISTÓRICO? :',
          'VOCÊ DESEJA CRIAR UMA NOVA PARTIDA? :',
          'VOCÊ DESEJA PARAR COM O JOGO? :',
        ]);

        switch (menufinal) {
          case 1:
            mostrarHistorico(historicoPartidas);

            int mostrarMenuSecundario = mostrarMenu([
              'VOCÊ DESEJA CRIAR UMA NOVA PARTIDA? :',
              'VOCÊ DESEJA PARAR COM O JOGO? :',
            ]);

            switch (mostrarMenuSecundario) {
              case 1:
                partida = criarPartida();
                break;

                case 2: 
                querContinuar = false;
                break;
            }


            break;
          case 2:
            partida = criarPartida();
            break;

          case 3:
            querContinuar = false;
            break;

          default:
        }
      } else {
        if (sugestao < partida.sorteado) {
          print(
            'O número escolhido por você é MENOR do que o numero ESCOLHIDO !!!',
          );
        } else if (sugestao > partida.sorteado) {
          print('-----------------------------------------------------');
          print('o número que você digitou é MAIOR que o número ESCOLHIDO !!!');
        }
        print('-------------------------------------------------------');
        print('VOCÊ DESEJA CONTINUAR? (sim/ não)');
        String resposta = stdin.readLineSync() ?? 'NÃO';

        if (resposta.toUpperCase() != 'SIM' &&
            resposta.toUpperCase() != 'S' &&
            resposta.toUpperCase() != 'SI') {
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
