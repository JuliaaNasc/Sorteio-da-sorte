import '../modelos/partida.dart';

void mostrarHistorico(List<Partida> historico) {

  print ('');
  for (Partida partida in historico) {
    print('---------------------------------------------------------------');

    print('MÍNIMO: ${partida.minimo}');
    print('MÁXIMO: ${partida.maximo}');
    print('SORTEADO: ${partida.sorteado}');
    print('NÚMERO DE SUGESTÕES: ${partida.numerosSugeridos.length}');
    print('NOME DO USUÁRIO: ${partida.nomeUsuario}');
  }
    print('---------------------------------------------------------------');
    print('');
}
