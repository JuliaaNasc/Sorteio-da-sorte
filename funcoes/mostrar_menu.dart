import 'pedir_numero.dart';

int mostrarMenu(List<String> opcoes) {
  bool selecionouOpcao = false;

  int? opcaoSelecionada = null;

  while (!selecionouOpcao) {
    for (int i = 1; i <= opcoes.length; i++) {
      print('$i - ${opcoes[i-1]}');
    }

    opcaoSelecionada = pedirNumero('');

    if (opcaoSelecionada > 0 && opcaoSelecionada <= opcoes.length) {
      selecionouOpcao = true;
    } else {
      print('VOCE NÃO DIGITOU UMA OPÇÃO OFERTADA !!!');
    }
  }

  return opcaoSelecionada!;
}
