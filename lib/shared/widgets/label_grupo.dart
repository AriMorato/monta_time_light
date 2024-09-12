import 'package:flutter/material.dart';
import 'package:monta_time_light/models/grupo.dart';

class LabelGrupo extends StatefulWidget {
  final Grupo editGrupo;
  const LabelGrupo({super.key, required this.editGrupo});

  @override
  State<LabelGrupo> createState() => _LabelGrupoState();
}

class _LabelGrupoState extends State<LabelGrupo> {
  @override
  Widget build(BuildContext context) {
    final grupo = widget.editGrupo.toString();
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      height: 60,
      child: Stack(
        children: [
          SizedBox(
            child: DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(
                  style: BorderStyle.solid,
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(10),
                color: Colors.amber,
              ),
              child: Text(
                grupo,
                style: const TextStyle(
                  fontFamily: 'IstokWeb',
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 50,
            height: 50,
            child: DecoratedBox(
              decoration: const BoxDecoration(
                color: Colors.amber,
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.edit),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
