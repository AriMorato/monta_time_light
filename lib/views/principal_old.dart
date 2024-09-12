import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:monta_time_light/util/images_asset.dart';
import 'package:monta_time_light/shared/widgets/botao_esporte.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  void initState() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //late Sport sport;
    double proporcaoW = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(59, 21, 121, 1),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Monta Time',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'IstokeWeb',
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              SvgPicture.asset(
                ImageAsset.logoMontaTime,
                width: proporcaoW / 2.7,
                height: proporcaoW / 2.7,
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: BotaoEsporte(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
