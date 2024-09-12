import 'package:monta_time_light/models/posicao.dart';
import 'package:uuid/uuid.dart';

class PosicoesFutebolSociety {
  static List<Posicao> pegarPosicoesFutebolSociety() {
    String uuid1 = const Uuid().v1();
    String uuid2 = const Uuid().v1();
    String uuid3 = const Uuid().v1();
    String uuid4 = const Uuid().v1();
    Posicao posicao1 = Posicao(guiId: uuid1, titulo: 'Gol');
    Posicao posicao2 = Posicao(guiId: uuid2, titulo: 'Zaga');
    Posicao posicao3 = Posicao(guiId: uuid3, titulo: 'Meia');
    Posicao posicao4 = Posicao(guiId: uuid4, titulo: 'Ataque');

    List<Posicao> posicoes = [];
    posicoes.add(posicao1);
    posicoes.add(posicao2);
    posicoes.add(posicao3);
    posicoes.add(posicao4);

    return posicoes;
  }
}
