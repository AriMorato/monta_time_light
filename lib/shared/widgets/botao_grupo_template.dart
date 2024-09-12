// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class BotaoGrupoTemplate extends StatefulWidget {
  const BotaoGrupoTemplate({super.key});

  @override
  State<BotaoGrupoTemplate> createState() => _BotaoGrupoTemplateState();
}

class _BotaoGrupoTemplateState extends State<BotaoGrupoTemplate> {
  bool possuiGrupo = false;
  bool igual = false;
  Color stackbackGroundColor = Colors.white10;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
            child: SizedBox(
              height: 60,
              width: MediaQuery.of(context).size.width,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey.shade400,
                ),
              ),
            ),
          ),
        ),
        !possuiGrupo
            ? Row(
                children: [
                  Draggable(
                    axis: Axis.horizontal,
                    feedback: SizedBox(
                      height: 60,
                      width: 60,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.blueAccent),
                      ),
                    ),
                    childWhenDragging: SizedBox(
                      height: 60,
                      width: 60,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.blueAccent,
                        ),
                      ),
                    ),
                    data: 'temgrupo',
                    child: SizedBox(
                      height: 60,
                      width: 60,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.blueAccent,
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Center(
                    child: Text(
                      'Deslize para inserir o grupo >>',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const Spacer(),
                  DragTarget(
                    builder: (context, accepted, rejected) {
                      return accepted.isEmpty
                          ? const CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.amber,
                            )
                          : const CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.black38,
                            );
                    },
                    onWillAccept: (data) {
                      if (data == 'temgrupo') {
                        return true;
                      } else {
                        return false;
                      }
                    },
                    onAccept: (data) {
                      setState(() {
                        possuiGrupo = true;
                        stackbackGroundColor = Colors.blue;
                      });
                    },
                  ),
                ],
              )
            : Row(
                children: [
                  DragTarget(
                    builder: (context, accepted, rejected) {
                      return accepted.isEmpty
                          ? const CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.amber,
                            )
                          : const CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.black38,
                            );
                    },
                    onWillAccept: (data) {
                      if (data == 'TemGrupo') {
                        return true;
                      } else {
                        return false;
                      }
                    },
                    onAccept: (data) {
                      setState(
                        () {
                          possuiGrupo = false;
                          stackbackGroundColor = Colors.white38;
                        },
                      );
                    },
                  ),
                  const Spacer(),
                  const Center(
                    child: Text(
                      '<< Delize para editar o grupo',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Draggable(
                    axis: Axis.horizontal,
                    feedback: SizedBox(
                      width: 60,
                      height: 60,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.black12,
                        ),
                      ),
                    ),
                    childWhenDragging: SizedBox(
                      height: 60,
                      width: 60,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.amber,
                        ),
                      ),
                    ),
                    data: 'NãoTemGrupo',
                    child: SizedBox(
                      width: 60,
                      height: 60,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.black12,
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.keyboard_arrow_left,
                            color: Colors.white38,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
        // Expanded(
        //   child: !possuiGrupo
        //       ? const Center(
        //           child: Text(
        //             'Não há grupo ',
        //             style: TextStyle(
        //               fontSize: 22,
        //             ),
        //           ),
        //         )
        //       : const Center(
        //           child: Text(
        //             'Há grupo ',
        //             style: TextStyle(
        //               fontSize: 22,
        //             ),
        //           ),
        //         ),
        // ),
      ],
    );
  }
}
