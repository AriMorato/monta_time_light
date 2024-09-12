import 'package:flutter/material.dart';
import 'package:monta_time_light/models/posicao.dart';

class NivelPosicaoJogador extends StatefulWidget {
  final String? sportPlay;
  final Posicao parametrosPosicoes;

  const NivelPosicaoJogador(
      {super.key, this.sportPlay, required this.parametrosPosicoes});

  @override
  State<NivelPosicaoJogador> createState() => _NivelPosicaoJogadorState();
}

class _NivelPosicaoJogadorState extends State<NivelPosicaoJogador> {
  late Posicao posicao;
  late double nivel;
  //double _currentValue = 0.0;
  //sempre declarar os controllers fora do metodo de construção do Widget
  TextEditingController levelController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //List<Widget> lstChips = [];

    final posicao = widget.parametrosPosicoes;
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(width: 0.3, color: Colors.grey.shade100),
            borderRadius: BorderRadius.circular(10),
            color: Colors.amber,
          ),
          child: SizedBox(
            width: 80,
            height: 45,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 2.0, 8.0, 2.0),
              child: Center(
                child: Text(
                  posicao.titulo,
                  style: const TextStyle(
                      fontFamily: 'IstokWeb',
                      fontSize: 18,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 2.0, 8.0, 2.0),
          child: Row(
            children: [
              chipPosition(posicao)
              // Container(
              //   width: 50,
              //   decoration: BoxDecoration(
              //     color: Colors.black,
              //     border: Border.all(width: 0.5, color: Colors.grey.shade100),
              //     borderRadius: BorderRadius.circular(10),
              //   ),
              //   child: Padding(
              //     padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
              //     child: TextFormField(
              //       initialValue: "0.0",
              //       textAlignVertical: TextAlignVertical.center,
              //       textAlign: TextAlign.center,
              //       controller: levelController,
              //       style: const TextStyle(color: Colors.white),
              //       decoration: const InputDecoration(
              //         border: InputBorder.none,
              //       ),
              //     ),
              //   ),
              // ),
              // Container(
              //   color: Colors.amber,
              //   width: 170,
              //   alignment: Alignment.centerRight,
              //   child: Slider(
              //     label: _currentValue.toString(),
              //     value: _currentValue,
              //     min: 0.0,
              //     max: 10.0,
              //     divisions: 8,
              //     onChanged: (double val) {
              //       setState(() {
              //         _currentValue = val;
              //         levelController.text = val.toString();
              //       });
              //     },
              //   ),
              // ),
            ],
          ),
        ),
      ],
    );
  }

  Widget chipPosition(Posicao posicao) {
    //double level;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Chip(
        label: Text(
          posicao.titulo.toString(),
        ),
        labelPadding: const EdgeInsets.fromLTRB(5, 2, 5, 2),
        labelStyle: const TextStyle(
            fontFamily: 'IstokWeb',
            fontSize: 18,
            fontWeight: FontWeight.normal),
        avatar: const Icon(Icons.done),
      ),
    );
  }
}
