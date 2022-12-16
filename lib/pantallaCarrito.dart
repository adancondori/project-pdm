import 'package:antojitos/pantalla_init/carrito/carrito.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PantallaCarrito extends StatefulWidget {
  @override
  _PantallaCarritoState createState() => _PantallaCarritoState();
}

class _PantallaCarritoState extends State<PantallaCarrito> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Carrito>(builder: (context, carrito, child) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 250, 157, 148),
          title: Text("PEDIDOS"),
          elevation: 0,
        ),
        body: Container(
            child: carrito.numeroItems == 0
                ? Center(
                    child: Text("Carrito Vacio"),
                  )
                : Column(
                    children: <Widget>[
                      for (var item in carrito.items.values)
                        Card(
                          margin: EdgeInsets.all(10),
                          child: Row(
                            children: <Widget>[
                              Image.asset(
                                "assets/img/" + item.imagen,
                                width: 100,
                              ),
                              Expanded(
                                  child: Container(
                                padding: EdgeInsets.all(5),
                                height: 100,
                                child: Column(
                                  children: <Widget>[
                                    Text(item.nombre),
                                    Text(
                                      "Bs/." + item.precio.toString(),
                                    ),
                                    Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Container(
                                              child: IconButton(
                                            icon: Icon(Icons.remove),
                                          )),
                                          Container(
                                              child: Center(
                                                  child: Text(
                                            item.cantidad.toString(),
                                          ))),
                                          Container(
                                              child: IconButton(
                                                  icon: Icon(Icons.remove))),
                                        ])
                                  ],
                                ),
                              ))
                            ],
                          ),
                        )
                    ],
                  )),
      );
    });
  }
}
