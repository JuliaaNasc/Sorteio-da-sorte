import 'pedir_numero.dart';

int mostrarMenu() {
  bool selecionouOpcao = false;

  int? opcaoSelecionada = null;

  while (!selecionouOpcao) {
    print('-----------------------------------------------------');
    print(
        'ME DEPAREI QUE SUA RESPOSTA ESTÁ FORA DOS PARAMETROS DAS QUANTIDADES ESTABELECIDAS ANTERIORMENTE: ');
    print('');
    print('1 - DESEJA CONTINUAR COM OS MESMOS VALORES?: ');
    print('2 - DESEJA REDEFINIR NOVOS VALORES?: ');
    print('3 - DESEJA ENCERRAR O PROGRAMA?: ');

    opcaoSelecionada = pedirNumero('');

    List<int> opcoes = [1, 2, 3];

    if (opcoes.contains(opcaoSelecionada)) {
      selecionouOpcao = true;
    } else {
      print('VOCE NÃO DIGITOU UMA OPÇÃO OFERTADA !!!');
    }
  }

  return opcaoSelecionada!;
}
