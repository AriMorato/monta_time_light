import 'package:objectbox/objectbox.dart';
import 'package:monta_time_light/models/jogador.dart';
import 'package:monta_time_light/models/grupo.dart';

@Entity()
class Partida {
  @Id()
  int partidaId;
  String? guiId;
  String? titulo;
  String? localDaPartida;
  String? diaDaSemnaDeJogo;
  int? horarioInicialDaPartida;
  int? horarioFinalDaPartida;
  bool independente;

  final jogadores = ToMany<Jogador>();

  final grupo = ToOne<Grupo>();

  Partida(
      {this.partidaId = 0,
      this.guiId,
      this.titulo,
      this.localDaPartida,
      this.diaDaSemnaDeJogo,
      this.horarioInicialDaPartida,
      this.horarioFinalDaPartida,
      this.independente = false});
}
