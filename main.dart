import 'dart:io';
import 'dart:math';

void main() {
  print('VENHA PARTICIPAR DA NOSSA BRINCADEIRA... ');

  print('ESCOLHA UM NÚMERO MÍNIMO: ');
  String minimo = stdin.readLineSync() ?? '1';
  int novoMinimo = int.parse(minimo);

  print('AGORA ESCOLHA O VALOR MÁXIMO: ');
  String maximo = stdin.readLineSync() ?? '1';
  int novoMaximo = int.parse(maximo);

  print('ME FALE UM VALOR COMO SUGESTÃO:  ');
  String sugestao = stdin.readLineSync() ?? '1';
  int novaSugestao = int.parse(sugestao);

  int numero = Random().nextInt(novoMaximo + 1);
  if (numero < novoMinimo) {
    numero = novoMinimo;
  }

  print('O número escolhido foi: $numero');

  if (novaSugestao < numero) {
    print(
      'O número escolhido por você é menor do que o numero ESCOLHIDO no programa !!!',
    );
  } else if (novaSugestao == numero) {
    print('VOCÊ DIGITOU O NÚMERO ESCOLHIDO!!!');
  } else if (novaSugestao > numero) {
    print('o número que você digitou é maior que o número ESCOLHIDO !!!');
  }
}
