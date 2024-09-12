import 'package:flutter/material.dart';
import 'package:monta_time_light/models/posicao.dart';
import 'package:monta_time_light/repositorio/posicao_repositorio.dart';
import 'package:monta_time_light/util/posicoes_futebol_society.dart';
import 'package:monta_time_light/shared/widgets/formulario_inserir_jogador.dart';

class JogadorPage extends StatefulWidget {
  const JogadorPage({super.key});

  @override
  State<JogadorPage> createState() => _JogadorPageState();
}

class _JogadorPageState extends State<JogadorPage> {
  late bool visivel;
  int? idPosiicao = 0;
  late List<Posicao> posicoes = [];
  List<int> idPosicoes = [];

  @override
  void initState() {
    super.initState();
    visivel = false;

    //verifica se ja existem posiçõe cadastradas no sistema
    final PosicaoRepositorio positionRepositorio = PosicaoRepositorio();

    idPosiicao = positionRepositorio.pegarPrimeiraPosicao()?.posicaoId ?? 0;
    //List<PositionsSocietySoccer> positionsSocietySoccer = [];
    // List<Position> positions = [];
    // List<int> idPositions = [];
    if (idPosiicao == 0) {
      posicoes = PosicoesFutebolSociety.pegarPosicoesFutebolSociety();
      idPosicoes = positionRepositorio.addPosicoes(posicoes);
      posicoes = [];
    }
    posicoes = positionRepositorio.pegarTodasPosicoes().toList();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print(posicoes.length.toString());
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 226, 224, 224),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  child: const Text('voltar'),
                ),
                Visibility(
                  visible: visivel,
                  child: Center(
                    child:
                        FormularioInserirJogador(parametrosPosicoes: posicoes),
                  ),
                )
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              visivel = !visivel;
            });
          },
          elevation: 10,
          backgroundColor: Colors.grey.shade50,
          child: const Icon(
            Icons.person_add,
            color: Color.fromRGBO(59, 21, 120, 1),
            size: 40,
          ),
        ),
      ),
    );
  }
}
