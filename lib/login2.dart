import 'package:flutter/material.dart';
import 'package:flutter_form_validator/Bienvenida.dart';

import 'diseño_decoracion.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final double horizontalPadding = 50;
  final double verticalPadding = 15;

  String email = '';
  String pass = '';

  final Email = TextEditingController();
  final password = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final elevatedButtonStyle = ElevatedButton.styleFrom(
      primary: Colors.red,
      onPrimary: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side: BorderSide(color: Color.fromARGB(255, 255, 97, 76), width: 2)),
    );

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/fondo.jpg"), fit: BoxFit.cover)),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _formkey,
              child: Column(
                children: [
                  Text(
                    "LOGIN",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),

                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(
                      horizontal: horizontalPadding,
                    ),
                    child: new Text(
                      'Email',
                      maxLines: 1,
                      textAlign: TextAlign.right,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 10, left: 30, right: 30),
                    child: TextFormField(
                      controller: Email,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          hintText: " Email",
                          fillColor: Colors.white,
                          filled: true),
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Ingrese el email';
                        }
                        if (!RegExp("^[a-zA-Z0-9+_.-]+@gmail.com")
                        //[a-zA-Z0-9.-]+.[a-z]+
                            .hasMatch(value)) {
                          return 'Por favor digite un email valido ejemplo@gmail.com';
                        }
                        return null;
                      },
                      onSaved: (String value) {
                        email = value;
                      },
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(
                      horizontal: horizontalPadding,
                    ),
                    child: new Text(
                      'Contraseña',
                      maxLines: 1,
                      textAlign: TextAlign.right,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 10, left: 30, right: 30),
                    child: TextFormField(
                      controller: password,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          hintText: " Contraseña",
                          fillColor: Colors.white,
                          filled: true),
                          //obscureText: true,
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Ingrese la contraseña';
                        }
                        if (!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,16}$')
                            .hasMatch(value)) {
                          return 'La contraseña debe tener al menos entre 8 y 16 caracteres, al menos un digito, al menos una minúscula y al menos una mayúscula y carácter especial';
                        }
                        return null;
                      },
                      onSaved: (String value) {
                        pass = value;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: horizontalPadding,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          '¿Olvido su contraseña?',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: SizedBox(
                      width: 200,
                      height: 50,
                      child: ElevatedButton(
                        style: elevatedButtonStyle,
                        onPressed: () {
                          email = Email.text;
                          pass = password.text;

                          if (_formkey.currentState.validate()) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => bienvenida(email)));
                            print("Exitoso");

                            return;
                          } else {
                            print("Fallido");
                          }
                        },
                        child: Text("Ingrese"),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: horizontalPadding,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Registrese aqui...',
                          style: TextStyle(fontSize: 18, color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
