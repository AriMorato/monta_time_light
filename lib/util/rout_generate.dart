import 'package:flutter/material.dart';
//import 'package:monta_time_light/views/paginas/jogador/jogador_pagina.dart';
import 'package:monta_time_light/views/principal.dart';
import 'package:monta_time_light/views/paginas/jogador.dart';

class RouteGenerate {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    //é possível validar o perfil do usuário antes de enviá-lo para a página de destino
    //e assim determinar quais recursos da página estarão disponíveis para o usuário
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => Principal(argGrupo: args as bool),
          //builder: (_) => const SportCarousel()
          //builder: (_) => const JogadorPagina(args: args.toString()),
        );
      case '/jogador':
        return MaterialPageRoute(
          builder: (_) => const JogadorPage(),
        );

      default:
        return _errorPage();
    }
  }

  // ignore: unused_element
  static Route<dynamic> _errorPage() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('Página de Erro'),
        ),
        body: const Center(
          child: Text('Erro'),
        ),
      ),
    );
  }
}
