import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class bienvenida extends StatefulWidget {
  String name;
  String last_name;
  String DNI;
  String phone;
  String email;
  String pass;
  String confpass;
  bienvenida(this.name, this.last_name, this.DNI, this.phone, this.email,
      this.pass, this.confpass);
  @override
  _bienvenidaState createState() => _bienvenidaState();
}

class _bienvenidaState extends State<bienvenida> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              "Bienvenid@",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Nombre:' + widget.name,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Apellido:' + widget.last_name,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'CI:' + widget.DNI,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Telefono:' + widget.phone,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Email:' + widget.email,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Contraseña:' + widget.pass,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Confirmar contraseña:' + widget.confpass,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
