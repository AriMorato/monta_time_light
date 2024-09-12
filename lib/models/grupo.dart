import 'package:objectbox/objectbox.dart';
import 'package:monta_time_light/models/partida.dart';

@Entity()
class Grupo {
  @Id()
  int grupoId;
  String nome;

  final partidas = ToMany<Partida>();

  Grupo({
    this.grupoId = 0,
    required this.nome,
  });
}
