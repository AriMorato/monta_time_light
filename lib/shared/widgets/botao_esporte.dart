import 'package:flutter/material.dart';
import 'package:monta_time_light/util/esportes_images.dart';
//import 'package:monta_time/models/esporte.dart';

class BotaoEsporte extends StatefulWidget {
  //final Esporte? esporte;

  const BotaoEsporte({super.key});

  @override
  State<BotaoEsporte> createState() => _BotaoEsporteState();
}

class _BotaoEsporteState extends State<BotaoEsporte> {
  @override
  Widget build(BuildContext context) {
    dynamic img;
    //String? txtSport;

    esportesImages.forEach(
      (key, value) {
        if (key == 'Futebol Society') {
          img = value;
          //txtSport = key;
        }
      },
    );
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 250,
              //height: 10,
              child: Center(
                child: Text(
                  'Bora Jogar!',
                  style: TextStyle(
                    fontFamily: 'Frijole',
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              alignment: Alignment.center,
              style: IconButton.styleFrom(
                  side: const BorderSide(
                style: BorderStyle.solid,
                color: Color.fromRGBO(207, 202, 216, 0.498),
                width: 5,
              )),
              icon: Image.asset(
                img,
                width: 60,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/jogador');
              },
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const Center(
          child: Text(
            'Futebol Society',
            style: TextStyle(
              fontFamily: 'IstokWeb',
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
