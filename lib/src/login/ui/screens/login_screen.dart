import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_pdm/src/login/bloc/login_bloc.dart';
import 'package:project_pdm/src/principal.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController myController = TextEditingController(text: '');

  goHome() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RootApp()),
    );
  }

  goMyDetails() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RootApp()),
    );
  }

  @override
  void dispose() {
    // myController.dispose();
    super.dispose();
  }

  void shoDialog(String message) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text("Mensaje"),
        content: Text(message),
        actions: <Widget>[
          ElevatedButton(
            onPressed: () {
              Navigator.of(ctx).pop();
            },
            child: Text("Aceptar"),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state is Authenticated) {
            if (state.user == "GUEST") {
              goMyDetails();
            } else {
              goHome();
            }
          }
          if (state is AuthError) {
            // Showing the error message if the user has entered invalid credentials
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.error)));
            shoDialog(state.error);
          }
        },
        child: BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            if (state is Loading) {
              // Showing the loading indicator while the user is signing in
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is UnAuthenticated ||
                state is AuthError ||
                state is Authenticated) {
              // Showing the sign in form if the user is not authenticated
              return Body(myController: myController);
            }
            return Container();
          },
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.myController,
  }) : super(key: key);

  final TextEditingController myController;

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final textField = Container(
      margin: EdgeInsets.only(left: 0, right: 0, top: 40),
      child: const Text(
        "LOGIN",
        style: TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontFamily: "Lato",
            fontWeight: FontWeight.bold),
      ),
    );
    final img = Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Image.asset(
        "lib/assets/img/logo_event.png",
        height: 250,
        width: 250,
      ),
    );
    final button = InkWell(
      onTap: () => {
        // TODO
      }, //onPressed,
      child: Container(
        margin: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
        height: 50.0,
        width: 180.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            gradient: const LinearGradient(
                colors: [Color(0xFF4268D3), Color(0xFF584CD1)],
                begin: FractionalOffset(0.2, 0.0),
                end: FractionalOffset(1.0, 0.6),
                stops: [0.0, 0.6],
                tileMode: TileMode.clamp)),
        child: const Center(
          child: Text(
            "Enviar",
            style: TextStyle(
                fontSize: 18.0, fontFamily: "Lato", color: Colors.white),
          ),
        ),
      ),
    );
    return Form(
      key: _formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color(0xff584CD1),
              Color(0xcc584CD1),
              Color(0xcc4268D3),
              Color(0xff4268D3),
            ])),
        child: SingleChildScrollView(
          child: Column(
            children: [textField, img, button],
          ),
        ),
      ),
    );
  }
}
