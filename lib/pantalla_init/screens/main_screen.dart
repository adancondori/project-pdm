import 'package:flutter/material.dart';

//widgets
import 'package:antojitos/pantalla_init/widgets/navbar.dart';

class Main_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Navbar(
          rightOptions: false,
          bgColor: Color.fromARGB(255, 250, 157, 148),
        ),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: SafeArea(
          child: ListView(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 16.0, right: 16.0, top: 74.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: 15.0),
                    Container(
                      padding: EdgeInsets.only(left: 9, top: 90),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _ofertas(),
                          SizedBox(height: 10.0),
                          _ofertas_img(),
                          SizedBox(height: 10.0),
                          _promociones(),
                          SizedBox(height: 10.0),
                          _promociones_img(),
                          SizedBox(height: 10.0),
                          _Bath(),
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

Widget _ofertas() {
  return Transform.translate(
    offset: Offset(0.0, -90.0),
    child: Container(
      padding: EdgeInsets.all(9.0),
      height: 50.0,
      width: 350.0,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 250, 157, 148),
          borderRadius: BorderRadius.circular(10.0)),
      child: Text('LO MAS VENDIDO...',
          textAlign: TextAlign.left,
          style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.bold,
              fontSize: 18.0)),
    ),
  );
}

Widget _ofertas_img() {
  return Transform.translate(
    offset: Offset(0.0, -90.0),
    child: Container(
      padding: EdgeInsets.all(9.0),
      height: 250.0,
      width: 350.0,
      decoration: BoxDecoration(
          color: Colors.transparent, borderRadius: BorderRadius.circular(25.0)),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              border: Border.all(
                  color: const Color(0xFF000000),
                  width: 4.0,
                  style: BorderStyle.solid),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            width: 160,
            height: 280,
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(top: 25),
                    child: Image.asset(
                      'assets/img/frappu.png',
                      width: 90,
                      height: 90,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                    child: Row(
                  children: [
                    Container(
                      // margin: EdgeInsets.symmetric(vertical: 10.0),
                      width: 100.0,
                      height: 50.0,
                      padding: EdgeInsets.only(left: 10),
                      child: Text('Frapuccino clásico',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.w500,
                              fontSize: 18.0)),
                    ),
                    Container(
                      child: Center(
                        child: Ink(
                          decoration: const ShapeDecoration(
                            color: Color.fromARGB(255, 106, 236, 145),
                            shape: CircleBorder(),
                          ),
                          height: 38,
                          width: 38,
                          child: IconButton(
                            icon: const Icon(Icons.add),
                            color: Colors.white,
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
              ],
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              border: Border.all(
                  color: const Color(0xFF000000),
                  width: 4.0,
                  style: BorderStyle.solid),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            width: 160,
            height: 280,
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(top: 25),
                    child: Image.asset(
                      'assets/img/copa1.jpg',
                      width: 90,
                      height: 90,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                    child: Row(
                  children: [
                    Container(
                      // margin: EdgeInsets.symmetric(vertical: 10.0),
                      width: 100.0,
                      height: 50.0,
                      padding: EdgeInsets.only(left: 10),
                      child: Text('Copa Luframa',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.w500,
                              fontSize: 18.0)),
                    ),
                    Container(
                      child: Center(
                        child: Ink(
                          decoration: const ShapeDecoration(
                            color: Color.fromARGB(255, 106, 236, 145),
                            shape: CircleBorder(),
                          ),
                          height: 38,
                          width: 38,
                          child: IconButton(
                            icon: const Icon(Icons.add),
                            color: Colors.white,
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
              ],
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              border: Border.all(
                  color: const Color(0xFF000000),
                  width: 4.0,
                  style: BorderStyle.solid),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            width: 160,
            height: 280,
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(top: 25),
                    child: Image.asset(
                      'assets/img/milshake.jpg',
                      width: 90,
                      height: 90,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                    child: Row(
                  children: [
                    Container(
                      // margin: EdgeInsets.symmetric(vertical: 10.0),
                      width: 100.0,
                      height: 50.0,
                      padding: EdgeInsets.only(left: 10),
                      child: Text('Milshake oreo',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.w500,
                              fontSize: 18.0)),
                    ),
                    Container(
                      child: Center(
                        child: Ink(
                          decoration: const ShapeDecoration(
                            color: Color.fromARGB(255, 106, 236, 145),
                            shape: CircleBorder(),
                          ),
                          height: 38,
                          width: 38,
                          child: IconButton(
                            icon: const Icon(Icons.add),
                            color: Colors.white,
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _promociones() {
  return Transform.translate(
    offset: Offset(0.0, -90.0),
    child: Container(
      padding: EdgeInsets.all(9.0),
      height: 50.0,
      width: 350.0,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 250, 157, 148),
          borderRadius: BorderRadius.circular(10.0)),
      child: Text('PROMOCIONES',
          textAlign: TextAlign.left,
          style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.bold,
              fontSize: 18.0)),
    ),
  );
}

Widget _promociones_img() {
  return Transform.translate(
    offset: Offset(0.0, -90.0),
    child: Container(
      padding: EdgeInsets.all(9.0),
      height: 250.0,
      width: 350.0,
      decoration: BoxDecoration(
          color: Colors.transparent, borderRadius: BorderRadius.circular(25.0)),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              border: Border.all(
                  color: const Color(0xFF000000),
                  width: 4.0,
                  style: BorderStyle.solid),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            width: 160,
            height: 280,
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(top: 25),
                    child: Image.asset(
                      'assets/img/frappu.png',
                      width: 90,
                      height: 90,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                    child: Row(
                  children: [
                    Container(
                      // margin: EdgeInsets.symmetric(vertical: 10.0),
                      width: 100.0,
                      height: 50.0,
                      padding: EdgeInsets.only(left: 10),
                      child: Text('Frapuccino clásico',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.w500,
                              fontSize: 18.0)),
                    ),
                    Container(
                      child: Center(
                        child: Ink(
                          decoration: const ShapeDecoration(
                            color: Color.fromARGB(255, 106, 236, 145),
                            shape: CircleBorder(),
                          ),
                          height: 38,
                          width: 38,
                          child: IconButton(
                            icon: const Icon(Icons.add),
                            color: Colors.white,
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
              ],
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              border: Border.all(
                  color: const Color(0xFF000000),
                  width: 4.0,
                  style: BorderStyle.solid),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            width: 160,
            height: 280,
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(top: 25),
                    child: Image.asset(
                      'assets/img/copa1.jpg',
                      width: 90,
                      height: 90,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                    child: Row(
                  children: [
                    Container(
                      // margin: EdgeInsets.symmetric(vertical: 10.0),
                      width: 100.0,
                      height: 50.0,
                      padding: EdgeInsets.only(left: 10),
                      child: Text('Copa Luframa',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.w500,
                              fontSize: 18.0)),
                    ),
                    Container(
                      child: Center(
                        child: Ink(
                          decoration: const ShapeDecoration(
                            color: Color.fromARGB(255, 106, 236, 145),
                            shape: CircleBorder(),
                          ),
                          height: 38,
                          width: 38,
                          child: IconButton(
                            icon: const Icon(Icons.add),
                            color: Colors.white,
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
              ],
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              border: Border.all(
                  color: const Color(0xFF000000),
                  width: 4.0,
                  style: BorderStyle.solid),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            width: 160,
            height: 280,
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(top: 25),
                    child: Image.asset(
                      'assets/img/milshake.jpg',
                      width: 90,
                      height: 90,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                    child: Row(
                  children: [
                    Container(
                      // margin: EdgeInsets.symmetric(vertical: 10.0),
                      width: 100.0,
                      height: 50.0,
                      padding: EdgeInsets.only(left: 10),
                      child: Text('Milshake oreo',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.w500,
                              fontSize: 18.0)),
                    ),
                    Container(
                      child: Center(
                        child: Ink(
                          decoration: const ShapeDecoration(
                            color: Color.fromARGB(255, 106, 236, 145),
                            shape: CircleBorder(),
                          ),
                          height: 38,
                          width: 38,
                          child: IconButton(
                            icon: const Icon(Icons.add),
                            color: Colors.white,
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _Bath() {
  return Transform.translate(
    offset: Offset(0.0, -90.0),
    child: Container(
      padding: EdgeInsets.all(9.0),
      height: 150.0,
      width: 350.0,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 250, 194, 194),
          borderRadius: BorderRadius.circular(25.0)),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              width: 50,
              child: Text('20%',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0)),
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text('CUPÓN DE DESCUENTO',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0)),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 140.0,
                    height: 40.0,
                    child: Text(
                        'Valido por 30 dias, no aplica para productos en promoción',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.w500,
                            fontSize: 12.0)),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Container(
              padding: const EdgeInsets.only(left: 10.0),
              child: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
                backgroundImage: ExactAssetImage('assets/img/oferta.png'),
                radius: 30.0,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
