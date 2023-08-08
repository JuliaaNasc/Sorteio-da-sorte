import 'dart:io';
import 'dart:math';

void main() {
  print('VENHA PARTICIPAR DA NOSSA BRINCADEIRA... ');
  print('-----------------------------------------------------');
  print('');

  print('ESCOLHA UM NÚMERO MÍNIMO: ');
  String minimo = stdin.readLineSync() ?? '1';
  int novoMinimo = int.parse(minimo);

  print('AGORA ESCOLHA O VALOR MÁXIMO: ');
  String maximo = stdin.readLineSync() ?? '1';
  int novoMaximo = int.parse(maximo);

  int sorteado = Random().nextInt(novoMaximo + 1);
  if (sorteado < novoMinimo) {
    sorteado = novoMinimo;
  }
  bool acertou = false;
  bool querContinuar = true;

  while (!acertou && querContinuar) {
    print('ME FALE UM NOVO VALOR EM NÚMERO COMO SUGESTÃO:  ');
    String sugestao = stdin.readLineSync() ?? '1';
    int novaSugestao = int.parse(sugestao);

    print('');

    if (novaSugestao < novoMinimo) {
      print(
          'O NÚMERO QUE O USUÁRIO ESCOLHEU, É MENOR DO QUE O NÚMERO ESTABELECIDO COMO MINÍMO');
      print('-----------------------------------------------------');
      print(
          'SEU CODÍGO NÃO RODOU POR UM ERRO NO VALOR ESTABELECIDO COMO SUGESTÃO!');
      print('');
    } else if (novaSugestao > novoMaximo) {
      print(
          'O NÚMERO QUE O USUÁRIO ESCOLHEU, É MAIOR DO QUE O NÚMERO ESTABELECIDO COMO MAXÍMO');
      print('-----------------------------------------------------');
      print(
          'SEU CODÍGO NÃO RODOU POR UM ERRO NO VALOR ESTABELECIDO COMO SUGESTÃO!');
      print('');
    } else {
      if (novaSugestao == sorteado) {
        print('O número escolhido foi: $sorteado');
        print('-----------------------------------------------------');

        print('VOCÊ DIGITOU O NÚMERO ESCOLHIDO!!!');
        acertou = true;
      } else {
        if (novaSugestao < sorteado) {
          print(
            'O número escolhido por você é menor do que o numero ESCOLHIDO no programa !!!',
          );
        } else if (novaSugestao > sorteado) {
          print('o número que você digitou é maior que o número ESCOLHIDO !!!');
        }

        print('VOCÊ DESEJA CONTINUAR? (sim/ não)');
        String resposta = stdin.readLineSync() ?? 'NÃO';

        if (resposta != 'sim') {
          querContinuar = false;
        }
      }

      print('-----------------------------------------------------');
      print('SEU CÓDIGO RODOU BEM, CASO PREFERIR, TENTE NOVAMENTE!');
      print('');
    }
  }
}
