import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:monta_time_light/util/images_asset.dart';
import 'package:monta_time_light/util/esportes_images.dart';
//import 'package:monta_time/repositorio/esporte_repositorio.dart';
//import 'package:monta_time/models/esporte.dart';
import 'package:uuid/uuid.dart';

// ignore: must_be_immutable
class ListaEsportes extends StatefulWidget {
  const ListaEsportes({super.key});

  @override
  State<ListaEsportes> createState() => _ListaEsportesState();
}

class _ListaEsportesState extends State<ListaEsportes> {
  //EsporteRepositorio esporteRepositorio = EsporteRepositorio();
  int count = 0;
  final ScrollController _scrollController = ScrollController();
  String uuid = const Uuid().v1();

  @override
  Widget build(BuildContext context) {
    double proporcaoW = MediaQuery.of(context).size.width;
    BuildContext contextGlobal = context;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Center(
              child: SizedBox(
                width: proporcaoW,
                child: const Center(
                  child: Text(
                    'Escolha o seu Sport!',
                    style: TextStyle(
                      fontFamily: 'IstokeWeb',
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 150,
              child: IconButton(
                icon: SvgPicture.asset(
                  ImageAsset.arrowToLeft,
                  colorFilter:
                      const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  width: 40,
                ),
                onPressed: () {
                  _scrollController.animateTo(_scrollController.offset + 120,
                      duration: const Duration(seconds: 1),
                      curve: Curves.fastOutSlowIn);
                },
              ),
            ),
            SizedBox(
              height: 150,
              width: 250,
              child: ListView.separated(
                controller: _scrollController,
                padding: const EdgeInsets.only(left: 20, right: 20),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, _) => const SizedBox(width: 30),
                itemCount: esportesImages.length,
                itemBuilder: (context, index) {
                  return buildCard(
                      esportesImages.entries.toList()[index], contextGlobal);
                },
              ),
            ),
            SizedBox(
              height: 150,
              child: IconButton(
                icon: SvgPicture.asset(
                  ImageAsset.arrowToRight,
                  colorFilter:
                      const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  width: 40,
                ),
                onPressed: () {
                  _scrollController.animateTo(_scrollController.offset - 120,
                      duration: const Duration(seconds: 1),
                      curve: Curves.fastOutSlowIn);
                },
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget buildCard(MapEntry<String, dynamic> arg, contextGlobal) {
    return SizedBox(
        height: 110,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              alignment: Alignment.center,
              style: IconButton.styleFrom(
                  side: const BorderSide(
                style: BorderStyle.solid,
                color: Color.fromRGBO(207, 202, 216, 0.498),
                width: 5,
              )),
              onPressed: () async {},
              icon: Image.asset(
                arg.value,
                width: 80,
              ),
            ),
            Text(
              arg.key,
              style: const TextStyle(
                  fontFamily: 'IstokeWeb',
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                  decoration: TextDecoration.none),
            ),
          ],
        ));
  }
}
