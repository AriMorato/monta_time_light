import 'package:flutter/material.dart';
import 'package:monta_time_light/repositorio/objectbox.dart';
import 'package:monta_time_light/util/rout_generate.dart';
import 'package:objectbox/objectbox.dart';
import 'package:monta_time_light/data/objectbox.g.dart';

late Store store;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  store = (await ObjectBox.create()).store;

  runApp(
    MaterialApp(
        theme: ThemeData(useMaterial3: true),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RouteGenerate.generateRoute,
        initialRoute: '/'),
  );
}
