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

  String name = '';
  String last_name = '';
  String phone = '';
  String DNI = '';
  String email = '';
  String pass = '';
  String confpass = '';

  //TextController to read text entered in text field
  final Name = TextEditingController();
  final lasname = TextEditingController();
  final ci = TextEditingController();
  final telephone = TextEditingController();
  final Email = TextEditingController();
  final password = TextEditingController();
  final confirmpassword = TextEditingController();

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
                    "REGISTRATE",
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
                      'Nombre',
                      maxLines: 1,
                      textAlign: TextAlign.right,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.only(bottom: 10, left: 30, right: 30),
                    child: TextFormField(
                      controller: Name,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          hintText: "Nombre",
                          fillColor: Colors.white,
                          filled: true),
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Ingrese el nombre';
                        }

                        return null;
                      },
                      onSaved: (String value) {
                        name = value;
                      },
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(
                      horizontal: horizontalPadding,
                    ),
                    child: new Text(
                      'Apellido',
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
                      controller: lasname,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          hintText: "Apellido",
                          fillColor: Colors.white,
                          filled: true),
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Ingrese el apellido';
                        }

                        return null;
                      },
                      onSaved: (String value) {
                        last_name = value;
                      },
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(
                      horizontal: horizontalPadding,
                    ),
                    child: new Text(
                      'Carnet de Identidad',
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
                      controller: ci,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: " CI",
                          fillColor: Colors.white,
                          filled: true),
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Ingrese el CI';
                        }
                        if (value.length < 7 || value.length > 8) {
                          return 'Numero de documento no valido';
                        }
                        return null;
                      },
                      onSaved: (String value) {
                        DNI = value;
                      },
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(
                      horizontal: horizontalPadding,
                    ),
                    child: new Text(
                      'Teléfono',
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
                      controller: telephone,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: " Nro de telefono",
                          fillColor: Colors.white,
                          filled: true),
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Ingrese el numero de telefono';
                        }
                        if (value.length < 8 || value.length > 8) {
                          return 'no valido tiene que tener 8 digitos';
                        }
                        return null;
                      },
                      onSaved: (String value) {
                        phone = value;
                      },
                    ),
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
                        if (!RegExp("^[a-zA-Z0-9+_.-]+@gmail.com")
                            .hasMatch(value)) {
                          return 'email no valido ejemplo@gmail.com';
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
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Ingrese la contraseña';
                        }
                        if (value.length < 8 || value.length > 8) {
                          return 'no valido tiene que tener 8 caracteres';
                        }
                        if (!RegExp(
                                r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~])')
                            .hasMatch(value)) {
                          return 'novalido ingrese Mayusculas,caracteres especiales y numeros';
                        }
                        return null;
                      },
                      onSaved: (String value) {
                        pass = value;
                      },
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(
                      horizontal: horizontalPadding,
                    ),
                    child: new Text(
                      'Confirmacion de contraseña',
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
                      controller: confirmpassword,
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          hintText: " Confirme la contraseña",
                          fillColor: Colors.white,
                          filled: true),
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'ingrese la misma contraseña';
                        }

                        print(password.text);

                        print(confirmpassword.text);

                        if (password.text != confirmpassword.text) {
                          return "la contraseña no coincide";
                        }

                        return null;
                      },
                      onSaved: (String value) {
                        confpass = value;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 150),
                    child: SizedBox(
                      width: 200,
                      height: 50,
                      child: ElevatedButton(
                        style: elevatedButtonStyle,
                        onPressed: () {
                          name = Name.text;
                          last_name = lasname.text;
                          DNI = ci.text;
                          phone = telephone.text;
                          email = Email.text;
                          pass = password.text;
                          confpass = confirmpassword.text;

                          if (_formkey.currentState.validate()) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => bienvenida(
                                        name,
                                        last_name,
                                        DNI,
                                        phone,
                                        email,
                                        pass,
                                        confpass)));
                            print("Exitoso");

                            return;
                          } else {
                            print("Fallido");
                          }
                        },
                        child: Text("Registrarse"),
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
                    child: Container(
                      padding: EdgeInsets.only(left: 130),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            '¿Ya tienes una cuenta?',
                            textAlign: TextAlign.right,
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            'Ingresa aqui...',
                            style: TextStyle(fontSize: 18, color: Colors.red),
                          ),
                        ],
                      ),
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
