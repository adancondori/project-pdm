import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class bienvenida extends StatefulWidget {
  String name;
  bienvenida(this.name);
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
              'Bienvenido a Antojitos ' + widget.name,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
