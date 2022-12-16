

class Carta {
  final int id;
  final String nombre;
  final double precio;
  final String imagen;

  Carta({this.id, this.nombre, this.precio, this.imagen});
}

// carta de ofertas
final ofer = [
  new Carta(id: 1, nombre: "Frappucino", precio: 20.10, imagen: "frappu.png"),
  new Carta(id: 2, nombre: "Milshake", precio: 18.50, imagen: "milshake.jpg"),
  new Carta(id: 3, nombre: "FRappe", precio: 12.0, imagen: "copa1.jpg"),
  new Carta(id: 4, nombre: "Frappucino", precio: 21.5, imagen: "frappu.png"),
];

//  carta de promociones

final promo = [
  new Carta(id: 1, nombre: "Frappucino", precio: 20.10, imagen: "frappu.png"),
  new Carta(id: 2, nombre: "Milshake", precio: 18.50, imagen: "milshake.jpg"),
  new Carta(id: 3, nombre: "FRappe", precio: 12.0, imagen: "copa1.jpg"),
  new Carta(id: 4, nombre: "Frappucino", precio: 21.5, imagen: "frappu.png"),
];
