// ignore_for_file: deprecated_member_use, must_be_immutable

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:monta_time_light/models/grupo.dart';
import 'package:monta_time_light/repositorio/grupo_repositorio.dart';
import 'package:monta_time_light/shared/widgets/modal_popup.dart';

class BotaoGrupo extends StatefulWidget {
  const BotaoGrupo({
    super.key,
  });

  @override
  State<BotaoGrupo> createState() => _BotaoGrupoState();
}

class _BotaoGrupoState extends State<BotaoGrupo> {
  bool grupoCadastrado = false;
  Icon btIcon = const Icon(
    Icons.group_add,
    color: Colors.black,
    size: 25,
  );
  TextEditingController grupoController = TextEditingController();
  GrupoRepositorio gpRepositorio = GrupoRepositorio();
  List<Grupo> grupos = [];
  StreamSubscription? subscription;

  Grupo gpExistente = Grupo(nome: '');
  @override
  void initState() {
    super.initState();
    subscription = gpRepositorio.grupoList().listen((List<Grupo>? lstGrupo) {
      setState(() {
        grupos = lstGrupo!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (grupos.isNotEmpty) {
      grupoController.text = grupos[0].nome;
      gpExistente = grupos[0];
    }
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: SizedBox(
                height: 50,
                child: DecoratedBox(
                  decoration: const BoxDecoration(
                    border: BorderDirectional(
                      top: BorderSide.none,
                      start: BorderSide.none,
                      bottom: BorderSide(
                          width: 1,
                          color: Colors.white,
                          style: BorderStyle.solid),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: TextField(
                      style: const TextStyle(
                        color: Colors.white,
                        fontFamily: 'IstokWeb',
                        fontSize: 18,
                      ),
                      controller: grupoController,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Nome do Grupo de Jogadores',
                        hintStyle: TextStyle(
                          fontFamily: 'IstokWeb',
                          fontSize: 15,
                          color: Colors.white54,
                          fontWeight: FontWeight.w800,
                        ),
                        counterStyle: TextStyle(
                            fontFamily: 'IstokWeb',
                            fontSize: 12,
                            color: Colors.white),
                        isDense: true,
                      ),
                      textAlign: TextAlign.center,
                      textAlignVertical: TextAlignVertical.center,
                      maxLength: 35,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
              child: SizedBox(
                height: 40,
                width: 40,
                child: DecoratedBox(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.amber,
                  ),
                  child: IconButton(
                    onPressed: () {
                      if (grupoController.text.length > 3) {
                        gpExistente.nome = grupoController.text;
                        int idGrupo = gpRepositorio.addGrupo(gpExistente);
                        if (idGrupo > 0) {
                          Navigator.pushNamed(context, '/jogador');
                        }
                      } else {
                        showDialog(
                          context: context,
                          builder: (_) {
                            return const ModalPopup(
                              msg:
                                  'O nome do grupo precisa ter mais de 3 caracteres',
                            );
                          },
                        );
                      }
                      debugPrint(
                          'O Texto digitado foi ${grupoController.text} e o tamanho é ${grupoController.text.length}');
                    },
                    icon: btIcon,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
