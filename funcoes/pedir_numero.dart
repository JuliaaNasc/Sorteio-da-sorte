import 'dart:io';

int pedirNumero(String mensagem) {
  int? respostaConvertida = null;
  while (respostaConvertida == null) {
    try {
      print(mensagem);
      String resposta = stdin.readLineSync() ?? '1';
      respostaConvertida = int.parse(resposta);
    } catch (e) {
      print(
          'VOCÊ DIGITOU UM VALOR NÃO NÚMERICO, POR FAVOR TENTE NOVAMENTE !!!');
    }
  }

  return respostaConvertida;
}
