// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:monta_time_light/util/pontos_jogador.dart';

DropdownButton ddw() {
  List<DropdownMenuItem<dynamic>> lstDdw = [];

  pontosJogador.forEach(
    (key, value) {
      lstDdw.map(
        (e) {
          DropdownMenuItem(
            key: e.key,
            value: e.value,
            child: Text(
              e.key.toString(),
            ),
          );
        },
      );
    },
  );

  return DropdownButton(
    items: lstDdw.toList(),
    onChanged: (value) {
      // ignore: avoid_print
      print(value);
    },
  );
}
