import 'package:flutter/material.dart';
import 'package:monta_time_light/util/esportes_images.dart';
//import 'package:monta_time/models/esporte.dart';
import 'package:monta_time_light/models/posicao.dart';
import 'package:monta_time_light/models/jogador.dart';
import 'package:monta_time_light/shared/widgets/posicao_e_nivel_jogador.dart';
import 'package:monta_time_light/controllers/valida_input_text.dart';

class FormularioInserirJogador extends StatefulWidget {
  final List<Posicao> parametrosPosicoes;
  const FormularioInserirJogador({super.key, required this.parametrosPosicoes});

  @override
  State<FormularioInserirJogador> createState() =>
      _FormularioInserirJogadorState();
}

class _FormularioInserirJogadorState extends State<FormularioInserirJogador> {
  List<Widget> lstWidget = [];
  late String email;
  late String nome;
  late String apelido;
  late double pontuacao;
  late Jogador jogador;
  late Posicao posicao;
  bool validated = false;

  //sempre declarar os controllers fora do metodo de construção do Widget
  TextEditingController emailController = TextEditingController();
  TextEditingController apelidoController = TextEditingController();
  TextEditingController nivelController = TextEditingController();

  @override
  void initState() {
    super.initState();

    final List<Posicao> lstPosicoes = widget.parametrosPosicoes.toList();

    for (Posicao pos in lstPosicoes) {
      Widget wdg = Padding(
          padding: const EdgeInsets.fromLTRB(3.0, 1.0, 3.0, 1.0),
          child:
              PosicaoNivelDoJogador(parametrosPosicoes: pos) //Text(pos.title),
          );
      lstWidget.add(wdg);
    }
  }

  @override
  Widget build(BuildContext context) {
    String esporteJogador = "Futebol Society";
    double sizeW = MediaQuery.of(context).size.width;
    double sizeH = MediaQuery.of(context).size.height;
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: sizeW - 30,
          height: sizeH - 90,
          child: DecoratedBox(
            decoration: BoxDecoration(
              // border: Border.all(width: 0.5, color: Colors.grey),
              borderRadius: BorderRadius.circular(25),
              color: Colors.black54,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade500,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(100),
                      ),
                    ),
                    child: SizedBox(
                      width: 70,
                      height: 70,
                      child: Image.asset(
                        esportesImages[esporteJogador],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text(
                      'Inserir jogador de $esporteJogador',
                      style: const TextStyle(
                        color: Colors.white,
                        fontFamily: 'IstokWeb',
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  insereJogador('email', emailController),
                  const SizedBox(
                    height: 20,
                  ),
                  insereJogador('apelido', apelidoController),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Position',
                    style: TextStyle(
                      fontFamily: 'IstokWeb',
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Wrap(
                    direction: Axis.horizontal,
                    runSpacing: 5,
                    children: lstWidget,
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 50,
          //left: sizeW - 50 / 2,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                alignment: const Alignment(0.0, 0.0),
                backgroundColor:
                    WidgetStateColor.resolveWith((states) => Colors.amber),
              ),
              onPressed: () {},
              child: const SizedBox(
                width: 300,
                height: 50,
                child: Center(
                  child: Text(
                    'Salvar',
                    style: TextStyle(
                      fontFamily: 'IstokWeb',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(66, 66, 66, 1),
                    ),
                  ),
                ),
              )),
        ),
      ],
    );
  }

  Widget insereJogador(String label, TextEditingController jogadorController) {
    email = '';
    apelido = '';
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$label:',
          textAlign: TextAlign.left,
          style: TextStyle(
            fontFamily: 'IstokWeb',
            fontSize: 15,
            color: Colors.grey.shade100,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(width: 0.5, color: Colors.grey.shade100),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 2.0, 8.0, 2.0),
            child: TextFormField(
              validator: (value) {
                if (!ValidaInputText.validaCaracteresEspeciais(
                    value.toString())) {
                  return 'Caracteres especiais não são aceitos';
                } else {
                  return null;
                }
              },
              style: const TextStyle(
                color: Colors.white,
                fontFamily: 'IstokWeb',
                fontSize: 18,
              ),
              controller: jogadorController,
              decoration: const InputDecoration(
                border: InputBorder.none,
              ),
              onChanged: (value) {
                if (label == 'Nome') {
                  email = value;
                } else if (label == 'Sobrenome') {
                  apelido = value;
                } else {
                  email = '';
                  apelido = '';
                }
              },
            ),
          ),
        ),
      ],
    );
  }
}
