import 'package:flutter/material.dart';

import 'Bienvenida.dart';



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
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
          child: Form(
        key: _formkey,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 15.0),
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/fondo.jpg"),
                            fit: BoxFit.cover)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            FadeInImage(
                                placeholder: NetworkImage(
                                    'https://www.hogarmania.com/archivos/202207/batidos-refrescantes-verano-comunidad-portada2-668x400x80xX-1.jpg'),
                                image: NetworkImage(
                                    'https://www.hogarmania.com/archivos/202207/batidos-refrescantes-verano-comunidad-portada2-668x400x80xX-1.jpg')),
                          ],
                        ),
                        SizedBox(height: 110.0),
                        _letralogin(),
                        Container(
                          child: Container(
                            height: 300.0,
                            width: 500.0,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  width: 480.0,
                                  child: Text('Usuario',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20.0)),
                                ),

                                //FORMULARIO USUARIO

                                Expanded(
                                  child: Row(children: <Widget>[
                                    Container(
                                      width: 10.0,
                                      child: Icon(
                                        Icons.person,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        size: 40.0,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 70,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(10),
                                      width: 200.0,
                                      decoration: BoxDecoration(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          border: Border.all(
                                              color: Color.fromARGB(
                                            255,
                                            255,
                                            255,
                                            255,
                                          ))),
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
                                          if (!RegExp(
                                                  "^[a-zA-Z0-9+_.-]+@gmail.com")
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
                                  ]),
                                ),
                                SizedBox(
                                  height: 15,
                                ),

                                //LetraCONTRASEñA

                                Expanded(
                                  child: Container(
                                    width: 480.0,
                                    child: Text('Contraseña',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Color.fromARGB(255, 0, 0, 0),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20.0)),
                                  ),
                                ),

                                Expanded(
                                  child: Row(children: <Widget>[
                                    Container(
                                      width: 10.0,
                                      child: Icon(
                                        Icons.lock,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        size: 40.0,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 70,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(10),
                                      width: 200.0,
                                      decoration: BoxDecoration(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          border: Border.all(
                                              color: Color.fromARGB(
                                            255,
                                            255,
                                            255,
                                            255,
                                          ))),
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
                                          if (!RegExp(
                                                  r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,16}$')
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
                                  ]),
                                ),

                                //OLVIDO SU CONTRASEñA?
                                SizedBox(
                                  height: 25,
                                ),
                                Expanded(
                                  child: Container(
                                    width: 480.0,
                                    child: Text('¿Olvidó su contraseña?',
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                            color: Color.fromARGB(255, 0, 0, 0),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14.0)),
                                  ),
                                ),

                                //boton

                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.only(right: 150),
                                    width: 290.0,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(480),
                                        ),
                                        padding: EdgeInsets.only(left: 10),
                                        backgroundColor: Color.fromARGB(
                                            255,
                                            240,
                                            121,
                                            121), // background (button) color
                                        foregroundColor: Color.fromARGB(
                                            255,
                                            214,
                                            156,
                                            156), // foreground (text) color
                                      ), // ignore
                                      onPressed: () {
                                        email = Email.text;
                                        pass = password.text;

                                        if (_formkey.currentState.validate()) {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      bienvenida(email)));
                                          print("Exitoso");

                                          return;
                                        } else {
                                          print("Fallido");
                                        }
                                      },
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 5.0, top: 12, bottom: 8),
                                          child: Text("Ingresar",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 19.0,
                                                  color: Color.fromARGB(
                                                      255, 255, 255, 255)))),
                                    ),
                                  ),
                                ),

                                Expanded(
                                  child: Container(width: 100.0),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 40.0),
                        _registrarse(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}

Widget _letralogin() {
  return Transform.translate(
    offset: Offset(0.0, -90.0),
    child: Container(
      padding: EdgeInsets.all(9.0),
      height: 50.0,
      width: 350.0,
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Text('LOGIN',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.w700,
              fontSize: 25.0)),
    ),
  );
}

Widget _registrarse() {
  return Transform.translate(
    offset: Offset(0.0, -90.0),
    child: Container(
      width: 480.0,
      padding: EdgeInsets.only(top: 50),
      child: Text('Registrate aquí',
          textAlign: TextAlign.right,
          style: TextStyle(
              color: Color.fromARGB(255, 221, 125, 125),
              fontWeight: FontWeight.w600,
              fontSize: 14.0)),
    ),
  );
}
