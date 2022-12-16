import 'package:antojitos/pantallaCarta.dart';
import 'package:antojitos/pantalla_init/carrito/carrito.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

void main() => runApp(
      ChangeNotifierProvider(
        create: (context) => Carrito(),
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Antojitos',
        theme: ThemeData(fontFamily: 'OpenSans'),
        initialRoute: "/pantallaCarta",
        debugShowCheckedModeBanner: false,
        routes: <String, WidgetBuilder>{
          "/pantallaCarta": (BuildContext context) => new FavoriteWidget(),
        });
  }
}
