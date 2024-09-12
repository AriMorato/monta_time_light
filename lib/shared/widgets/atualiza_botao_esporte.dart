import 'package:flutter/material.dart';
//import 'package:monta_time_light/models/esporte.dart';
//import 'package:monta_time_light/repositorio/esporte_repositorio.dart';

class AtualizaBotaoEsporte extends StatefulWidget {
  //final Esporte esporte;

  const AtualizaBotaoEsporte({super.key});

  @override
  State<AtualizaBotaoEsporte> createState() => _AtualizaBotaoEsporteState();
}

class _AtualizaBotaoEsporteState extends State<AtualizaBotaoEsporte> {
  bool excluido = false;
  @override
  Widget build(BuildContext context) {
    // final EsporteRepositorio esporteRepositorio = EsporteRepositorio();
    // Esporte esporte = widget.esporte;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: ElevatedButton.icon(
              style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  Color.fromRGBO(102, 255, 0, 1),
                ),
              ),
              icon: const Icon(
                Icons.replay,
                color: Color.fromRGBO(59, 21, 120, 1),
              ),
              label: const Text(
                'Futebol Society',
                style: TextStyle(
                    fontFamily: 'Frijole',
                    fontSize: 20,
                    color: Color.fromRGBO(59, 21, 120, 1),
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }
}
