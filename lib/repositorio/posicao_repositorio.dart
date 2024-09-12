import 'package:monta_time_light/models/posicao.dart';
import 'package:objectbox/objectbox.dart';
import 'package:monta_time_light/main.dart';

class PosicaoRepositorio {
  Box<Posicao> posicaoBox = store.box<Posicao>();

  // int addPosicao(Posicao position) {
  //   int idPosition = 0;
  //   if (position.guiId.isNotEmpty) {
  //     idPosition = posicaoBox.put(position);
  //   } else {
  //     throw Exception('Dados inválidos ou incompletos');
  //   }
  //   return idPosition;
  // }

  // Future<int> addPosicaoAsync(Posicao position) async {
  //   int idposition = 0;
  //   if (position.guiId.isNotEmpty) {
  //     idposition = await posicaoBox.putAsync(position);
  //   } else {
  //     throw Exception('Dados inválidos ou incompletos');
  //   }
  //   return idposition;
  // }

  List<int> addPosicoes(List<Posicao> lstPositions) {
    return posicaoBox.putMany(lstPositions);
  }

  Posicao pegarPosicaoPorId(int id) => posicaoBox.get(id)!;

  Posicao? pegarPrimeiraPosicao() => posicaoBox.getAll().firstOrNull;

  List<Posicao> pegarTodasPosicoes() => posicaoBox.getAll();

  Stream<List<Posicao>> posicaoList() {
    final queryBuilderPosition = posicaoBox.query();

    return queryBuilderPosition
        // Constroi e observea a consulta,
        // defina triggerImmediately para emitir a consulta imediatamente ao escutar modificacões.
        .watch(triggerImmediately: true)
        // Mapeia para uma lista de tarefas a serem usadas por um StreamBuilder.
        .map((query) => query.find());
  }

  bool deletPosition(int id) {
    return posicaoBox.remove(id);
  }
}
