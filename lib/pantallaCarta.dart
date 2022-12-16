
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pantallaCarrito.dart';
import 'pantalla_init/carrito/carrito.dart';
import 'pantalla_init/model/Carta.dart';

class FavoriteWidget extends StatefulWidget {
  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  final GlobalKey<ScaffoldState> _globalkey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Consumer<Carrito>(builder: (context, carrito, child) {
      return Scaffold(
        key: _globalkey,
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 250, 157, 148),
          actions: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      child: IconButton(
                          icon: Icon(Icons.drag_indicator,
                              color: Color.fromARGB(255, 0, 0, 0), size: 30.0),
                          onPressed: null),
                    ),

                    //buscador
                    GestureDetector(
                      child: IconButton(
                          icon: Icon(Icons.search,
                              color: Color.fromARGB(255, 0, 0, 0), size: 30.0),
                          onPressed: null),
                    ),

                    GestureDetector(
                      child: Container(
                        padding: EdgeInsets.all(60.0),
                        height: 40.0,
                        width: 150.0,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Text('Buscar',
                            style: TextStyle(
                                color: Color.fromARGB(255, 91, 62, 9),
                                fontWeight: FontWeight.w500,
                                fontSize: 15.0)),
                      ),
                    ),
                    //carrito
                    GestureDetector(
                        child: Stack(children: <Widget>[
                      IconButton(
                          icon: Icon(Icons.shopping_cart),
                          onPressed: () {
                            carrito.numeroItems != 0
                                ? Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext)=>PantallaCarrito()))
                                : SnackBar(
                                    content: Text("Agrega un producto"),
                                  );
                          }),
                      new Positioned(
                          child: Container(
                              padding: EdgeInsets.all(2),
                              decoration: new BoxDecoration(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  borderRadius: BorderRadius.circular(4)),
                              constraints:
                                  BoxConstraints(maxHeight: 14, minWidth: 14),
                              child: Text(carrito.numeroItems.toString(),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 10))))
                    ])),

                    //perfil
                    GestureDetector(
                      child: IconButton(
                          padding:
                              const EdgeInsets.only(left: 10.0, right: 10.0),
                          icon: Icon(Icons.person,
                              color: Color.fromARGB(255, 0, 0, 0), size: 30.0),
                          onPressed: null),
                    ),
                  ],
                ),
              ],
            ),
          ],
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
                      padding: EdgeInsets.only(left: 9, top: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //Letas oferta
                          _ofertas(),

                          SizedBox(height: 20.0),
// Contenedor imagenes de oferta
                          Container(
                            padding: EdgeInsets.all(5.0),
                            height: 300.0,
                            width: 350.0,
                            child: GridView.builder(
                                itemCount: ofer.length,
                                scrollDirection: Axis.horizontal,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 1,
                                        crossAxisSpacing: 10,
                                        mainAxisSpacing: 10),
                                itemBuilder: (context, index) {
                                  return Container(
                                      width: 100,
                                      height: 240,
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
                                      child: Column(children: <Widget>[
                                        Expanded(
                                          child: Container(
                                            child: Center(
                                              child: Image.asset(
                                                "assets/img/" +
                                                    ofer[index].imagen,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                            child: Row(
                                          children: [
                                            Container(
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                              child: Text(
                                                  "" +
                                                      ofer[index].nombre +
                                                      "  Bs/." +
                                                      ofer[index]
                                                          .precio
                                                          .toString(),
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 0, 0, 0),
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 18.0)),
                                            ),
                                            SizedBox(
                                              width: 30,
                                            ),
                                            Container(
                                              child: Center(
                                                child: Ink(
                                                  decoration:
                                                      const ShapeDecoration(
                                                    color: Color.fromARGB(
                                                        255, 106, 236, 145),
                                                    shape: CircleBorder(),
                                                  ),
                                                  height: 38,
                                                  width: 38,
                                                  child: IconButton(
                                                    icon: const Icon(Icons.add),
                                                    color: Colors.white,
                                                    onPressed: () {
                                                      setState(() {
                                                        carrito.agregarItem(
                                                          ofer[index]
                                                              .id
                                                              .toString(),
                                                          ofer[index].nombre,
                                                          ofer[index].precio,
                                                          ofer[index].imagen,
                                                          1,
                                                        );
                                                      });
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )),
                                      ]));
                                }),
                          ),

                          SizedBox(height: 100.0),

                          ///LETRA PROMOCIONES
                          _promociones(),

                          //IMAGENES PROMOCIONES

                          Container(
                            padding: EdgeInsets.all(5.0),
                            height: 300.0,
                            width: 350.0,
                            child: GridView.builder(
                                itemCount: promo.length,
                                scrollDirection: Axis.horizontal,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 1,
                                        crossAxisSpacing: 10,
                                        mainAxisSpacing: 10),
                                itemBuilder: (context, index) {
                                  return Container(
                                      width: 100,
                                      height: 240,
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
                                      child: Column(children: <Widget>[
                                        Expanded(
                                          child: Container(
                                            child: Center(
                                              child: Image.asset(
                                                "assets/img/" +
                                                    promo[index].imagen,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                            child: Row(
                                          children: [
                                            Container(
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                              child: Text(
                                                  "" +
                                                      promo[index].nombre +
                                                      "  Bs/." +
                                                      promo[index]
                                                          .precio
                                                          .toString(),
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 0, 0, 0),
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 18.0)),
                                            ),
                                            SizedBox(
                                              width: 30,
                                            ),
                                            Container(
                                              child: Center(
                                                child: Ink(
                                                  decoration:
                                                      const ShapeDecoration(
                                                    color: Color.fromARGB(
                                                        255, 106, 236, 145),
                                                    shape: CircleBorder(),
                                                  ),
                                                  height: 38,
                                                  width: 38,
                                                  child: IconButton(
                                                    icon: const Icon(Icons.add),
                                                    color: Colors.white,
                                                    onPressed: () {
                                                      setState(() {
                                                        carrito.agregarItem(
                                                          promo[index]
                                                              .id
                                                              .toString(),
                                                          promo[index].nombre,
                                                          promo[index].precio,
                                                          promo[index].imagen,
                                                          1,
                                                        );
                                                      });
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )),
                                      ]));
                                }),
                          ),
                          SizedBox(height: 100.0),
                          _Bath(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
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
