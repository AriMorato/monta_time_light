import 'package:objectbox/objectbox.dart';
import 'package:monta_time_light/models/jogador.dart';

@Entity()
class Posicao {
  @Id()
  int posicaoId;
  String? guiId;
  String titulo;

  final jogadores = ToMany<Jogador>();

  Posicao({
    this.posicaoId = 0,
    this.guiId,
    required this.titulo,
  });
}
