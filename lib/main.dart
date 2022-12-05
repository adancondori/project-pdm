import 'package:flutter/material.dart';

// screens
import 'package:antojitos/pantalla_init/screens/main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Mi perfil',
        theme: ThemeData(fontFamily: 'OpenSans'),
        initialRoute: "/main_screen",
        debugShowCheckedModeBanner: false,
        routes: <String, WidgetBuilder>{
          "/main_screen": (BuildContext context) => new Main_screen(),
        });
  }
}
