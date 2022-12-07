import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_pdm/src/ToDoApp/to_do_material_app.dart';
import 'package:project_pdm/src/counter/app.dart';
import 'package:project_pdm/src/counter/counter_observer.dart';
import 'package:project_pdm/src/login/bloc/login_bloc.dart';
import 'package:project_pdm/src/login/ui/screens/login_screen.dart';
import 'package:project_pdm/src/principal.dart';
import 'package:project_pdm/src/request_example/screens/ScreenList.dart';

void main() {
  //runApp(const RootApp());
  // Example 1
  //Bloc.observer = CounterObserver();
  //runApp(const CounterApp());

  // Example 2 .
  runApp(HttpMyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ToDoMaterialApp();
  }
}

class HttpMyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HTTP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PostsPage(),
    );
  }
}
/*
class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var providers2 = [
          BlocProvider<LoginBloc>(
              create: (context) => LoginBloc(),
        ];
    return RepositoryProvider(
        create: (BuildContext context) {  },
        child: MultiBlocProvider(providers: providers2, child: LoginScreen())
        );
  }
}
*/
