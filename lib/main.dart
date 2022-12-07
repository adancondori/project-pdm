import 'package:flutter/material.dart';
import 'package:project_pdm/login/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Antojitos',
        theme: ThemeData(fontFamily: 'OpenSans'),
        initialRoute: "/login",
        debugShowCheckedModeBanner: false,
        routes: <String, WidgetBuilder>{
          "/login": (BuildContext context) => new login_init(),
        });
  }
}
