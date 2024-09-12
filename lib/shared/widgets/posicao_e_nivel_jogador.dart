import 'package:flutter/material.dart';
import 'package:monta_time_light/models/posicao.dart';
import 'package:monta_time_light/util/pontos_jogador.dart';

// ignore: must_be_immutable
class PosicaoNivelDoJogador extends StatefulWidget {
  final Posicao parametrosPosicoes;

  PosicaoNivelDoJogador({super.key, required this.parametrosPosicoes});
  final TextEditingController levelController = TextEditingController();

  @override
  State<PosicaoNivelDoJogador> createState() => _PosicaoNivelDoJogadorState();
}

class _PosicaoNivelDoJogadorState extends State<PosicaoNivelDoJogador> {
  bool active = false;
  int i = -1;
  double _valorAtual = 0.0;

  @override
  Widget build(BuildContext context) {
    final Posicao posicao = widget.parametrosPosicoes;
    List<double> niveis = pontosJogador.values.toList();
    // ignore: avoid_print
    print(niveis[0].toString());
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: active ? Colors.amber : Colors.grey,
      ),
      child: IntrinsicWidth(
        child: GestureDetector(
          child: SizedBox(
            //width: 170,
            height: 45,
            child: Center(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: Text(
                      '${posicao.titulo} | $_valorAtual',
                      style: TextStyle(
                          fontFamily: 'IstokWeb',
                          fontSize: 18,
                          fontWeight:
                              active ? FontWeight.bold : FontWeight.normal,
                          color: active ? Colors.black : Colors.grey.shade700),
                    ),
                  ),
                ],
              ),
            ),
          ),
          onTap: () {
            setState(
              () {
                i++;
                if (i < niveis.length) {
                  _valorAtual = niveis[i];
                  active = true;
                }
                if (i > 5) {
                  i = -1;
                  _valorAtual = 0.0;
                  active = false;
                }
                // ignore: avoid_print
              },
            );
          },
        ),
      ),
    );
  }
}
