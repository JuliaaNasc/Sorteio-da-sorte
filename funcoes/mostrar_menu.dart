import 'pedir_numero.dart';

int mostrarMenu(List<String> opcoes) {
  int? opcaoSelecionada = null;

  while (opcaoSelecionada == null) {
    for (int i = 1; i <= opcoes.length; i++) {
      print('$i - ${opcoes[i - 1]}');
    }
    opcaoSelecionada = pedirNumero('');
    if (opcaoSelecionada > opcoes.length || opcaoSelecionada < 1) {
      opcaoSelecionada = null;
    }
  }

  return opcaoSelecionada;
}
