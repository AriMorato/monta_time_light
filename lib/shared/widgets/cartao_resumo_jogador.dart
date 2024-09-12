import 'package:flutter/material.dart';

class CartaoResumoJogador extends StatefulWidget {
  const CartaoResumoJogador({super.key});

  @override
  State<CartaoResumoJogador> createState() => _CartaoResumoJogadorState();
}

class _CartaoResumoJogadorState extends State<CartaoResumoJogador> {
  @override
  Widget build(BuildContext context) {
    final double sizeW = MediaQuery.of(context).size.width;
    //final double sizeH = MediaQuery.of(context).size.height;
    return Card(
      elevation: 10,
      // clipBehavior is necessary because, without it, the InkWell's animation
      // will extend beyond the rounded edges of the [Card] (see https://github.com/flutter/flutter/issues/109776)
      // This comes with a small performance cost, and you should not set [clipBehavior]
      // unless you need it.
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        splashColor: const Color.fromARGB(255, 1, 21, 37).withAlpha(30),
        onTap: () {
          debugPrint('Card tapped.');
        },
        child: SizedBox(
            width: sizeW - 30,
            height: 100,
            child: Row(
              children: [
                Container(
                  width: (sizeW - 30) / 3,
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Colors.amber,
                  ),
                  child: const Column(
                    children: [],
                  ),
                ),
                Container(
                  width: (sizeW - 30) / 3,
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(10, 3, 71, 1),
                  ),
                ),
                Container(
                  width: (sizeW - 30) / 3,
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(5, 121, 111, 1),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
