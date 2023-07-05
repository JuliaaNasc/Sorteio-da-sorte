import 'dart:io';
import 'dart:math';

void main() {
  print('ESCOLHA UM NÚMERO MÁXIMO E VENHA PARTICIPAR DA NOSSA BRINCADEIRA: ');
  String sugestao = stdin.readLineSync() ?? '1';

  print('AGORA ESCOLHA O VALOR MÍNIMO: ');
  String sugestao2;
  sugestao2 = stdin.readLineSync() ?? '1';

  // print('AGORA ESCOLHA UM VALOR MÍNINO: $sugestao');

  int numero = Random().nextInt(101) + 1;
  print('O número escolhido foi: $numero');

  int converter = int.parse(sugestao);
  if (converter < numero) {
    print(
      'O número escolhido por você é menor do que o numero ESCOLHIDO no programa !!!',
    );
  } else if (converter == numero) {
    print('VOCÊ DIGITOU O NÚMERO ESCOLHIDO!!!');
  } else if (converter > numero) {
    print('o número que você digitou é maior que o número ESCOLHIDO !!!');
  }
}
