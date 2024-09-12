import 'package:objectbox/objectbox.dart';
import 'package:monta_time_light/models/partida.dart';
import 'package:monta_time_light/models/posicao.dart';

@Entity()
class Jogador {
  @Id()
  int jogadorId;
  String apelido;
  String guiId;
  String? avatar;
  double pontos;

  final posicoes = ToMany<Posicao>();

  final partidas = ToMany<Partida>();

  Jogador({
    this.jogadorId = 0,
    required this.apelido,
    required this.guiId,
    this.avatar,
    required this.pontos,
  });
}
