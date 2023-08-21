import '../modelos/partida.dart';

void mostrarHistorico(List<Partida> historico) {
  print('');
  print('QUANTIDADE DE PARTIDAS: ${historico.length}');
  for (Partida partida in historico) {
    print('---------------------------------------------------------------');

    print('NOME DO USUÁRIO: ${partida.nomeUsuario}');
    print('MÍNIMO: ${partida.minimo}');
    print('MÁXIMO: ${partida.maximo}');
    print('NÚMERO DE SUGESTÕES: ${partida.numerosSugeridos.length}');
    print('SORTEADO: ${partida.sorteado}');
  }
  print('---------------------------------------------------------------');
  print('');
}
