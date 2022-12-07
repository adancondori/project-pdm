import 'package:flutter/material.dart';

class login_init extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: SafeArea(
          child: ListView(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 16.0, right: 16.0, top: 0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: 15.0),
                    Container(
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
                          SizedBox(height: 10.0),
                          _formulariologin(),
                          SizedBox(height: 10.0),
                          _registrarse(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
             ],
          ),
        ));
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

Widget _formulariologin() {
  return Transform.translate(
    offset: Offset(0.0, -90.0),
    child: Container(
      decoration: BoxDecoration(
          color: Color.fromARGB(53, 129, 129, 129),
          borderRadius: BorderRadius.circular(25.0)),
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
                    color: Color.fromARGB(255, 255, 255, 255),
                    border: Border.all(
                        color: Color.fromARGB(
                      255,
                      255,
                      255,
                      255,
                    ))),
                child: Text(
                  "Usuario",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 91, 62, 9),
                    fontWeight: FontWeight.w500,
                  ),
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
                  Icons.close,
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
                    color: Color.fromARGB(255, 255, 255, 255),
                    border: Border.all(
                        color: Color.fromARGB(
                      255,
                      255,
                      255,
                      255,
                    ))),
                child: Text(
                  "********",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 91, 62, 9),
                    fontWeight: FontWeight.w500,
                  ),
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
              width: 200.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(480),
                  ),
                  padding: EdgeInsets.only(left: 10),
                  backgroundColor: Color.fromARGB(
                      255, 240, 121, 121), // background (button) color
                  foregroundColor: Color.fromARGB(
                      255, 214, 156, 156), // foreground (text) color
                ), // ignore
                onPressed: () {},
                child: Padding(
                    padding: EdgeInsets.only(
                        left: 16.0, right: 16.0, top: 12, bottom: 8),
                    child: Text("Ingresar",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 19.0,
                            color: Color.fromARGB(255, 255, 255, 255)))),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
//-------------
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
