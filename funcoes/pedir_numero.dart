import 'dart:io';

int pedirNumero(String mensagem) {
  print(mensagem);
  String resposta = stdin.readLineSync() ?? '1';
  int respostaConvertida = int.parse(resposta);

  return respostaConvertida;
}
