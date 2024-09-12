import 'package:flutter/material.dart';

InputDecoration getInputDecorationPlayer(String label) {
  return InputDecoration(
    contentPadding: const EdgeInsets.all(3.0),
    filled: true,
    fillColor: Colors.white,
    hintText: 'Entre com o $label do Jogador Participante',
    hintStyle: TextStyle(
      color: Colors.grey.shade500,
      fontFamily: 'IstokWeb',
      fontSize: 13,
      fontStyle: FontStyle.italic,
    ),
    labelText: label,
    labelStyle: TextStyle(
      fontFamily: 'IstokWeb',
      fontSize: 18,
      color: Colors.grey.shade500,
    ),
    border: InputBorder.none,
    enabledBorder: UnderlineInputBorder(
      borderRadius: BorderRadius.circular(20),
    ),
  );
}
