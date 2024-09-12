import 'package:flutter/material.dart';

class ModalPopup extends StatefulWidget {
  const ModalPopup({super.key, required this.msg});
  final msg;

  @override
  State<ModalPopup> createState() => _ModalPopupState();
}

class _ModalPopupState extends State<ModalPopup> {
  @override
  Widget build(BuildContext context) {
    String mensagem = widget.msg.toString();
    return AlertDialog(
      title: const Text('Atenção!'),
      titleTextStyle: const TextStyle(
          fontFamily: 'istokWeb',
          fontSize: 30,
          fontWeight: FontWeight.w600,
          color: Colors.black),
      titlePadding: const EdgeInsets.all(8.0),
      icon: const Icon(
        Icons.info,
        size: 60,
      ),
      shadowColor: Colors.black,
      iconColor: Colors.black54,
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      iconPadding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
      content: Text(mensagem),
      contentTextStyle: const TextStyle(
          fontFamily: 'IstokWeb',
          fontSize: 18,
          color: Colors.black87,
          fontWeight: FontWeight.bold),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.cancel,
          ),
          iconSize: 40,
          splashColor: Colors.grey,
          color: Colors.black54,
        ),
      ],
    );
  }
}
