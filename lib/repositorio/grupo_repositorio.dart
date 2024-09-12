// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:monta_time_light/data/objectbox.g.dart';
import 'package:monta_time_light/models/grupo.dart';
import 'package:objectbox/objectbox.dart';
import 'package:monta_time_light/main.dart';

class GrupoRepositorio {
  Box<Grupo> grupoBox = store.box<Grupo>();

  int addGrupo(Grupo grupo) {
    int idGrupo = grupo.grupoId;
    //if (grupo.isNotEmpty) {
    idGrupo = grupoBox.put(grupo);
    //} else {
    //  throw Exception('Dados inválidos ou incompletos');
    //}
    return idGrupo;
  }

  Future<int> addGrupoAsync(Grupo grupo) async {
    int idposition = grupo.grupoId;
    idposition = await grupoBox.putAsync(grupo);
    return idposition;
  }

  // List<int> addPosicoes(List<Grupo> lstGrupos) {
  //   return grupoBox.putMany(lstGrupos);
  // }

  // Grupo pegarGrupoPorId(int id) => grupoBox.get(id)!;

  Grupo? pegarPrimeiroGrupo() => grupoBox.getAll().firstOrNull;

  //List<Grupo> pegarTodosGrupos() => grupoBox.getAll();

  Stream<List<Grupo>> grupoList() {
    final queryBuilderGrupo = grupoBox.query();

    return queryBuilderGrupo
        // Constroi e observea a consulta,
        // defina triggerImmediately para emitir a consulta imediatamente ao escutar modificacões.
        .watch(triggerImmediately: true)
        // Mapeia para uma lista de tarefas a serem usadas por um StreamBuilder.
        .map((query) => query.find());
  }

  bool deletPosition(int id) {
    return grupoBox.remove(id);
  }
}
