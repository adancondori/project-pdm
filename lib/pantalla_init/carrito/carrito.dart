import 'package:flutter/material.dart';

import '../model/Item.dart';

class Carrito extends ChangeNotifier {
  Map<String, Item> _items = {};
  Map<String, Item> get items {
    return {..._items};
  }

  int get numeroItems {
    return _items.length;
  }

  double get montoTotal {
    var total = 0.0;
    items.forEach(
        (key, elementos) => total += elementos.precio * elementos.cantidad);
    return total;
  }

  void agregarItem(
    String producto_id,
    String nombre,
    double precio,
    String imagen,
    int cantidad,
  ) {
    if (_items.containsKey(producto_id)) {
      _items.update(
          producto_id,
          (old) => Item(
              id: old.id,
              nombre: old.nombre,
              precio: old.precio,
              imagen: old.imagen,
              cantidad: old.cantidad + 1));
    } else {
      _items.putIfAbsent(
          producto_id,
          () => Item(
              id: producto_id,
              nombre: nombre,
              precio: precio,
              imagen: imagen,
              cantidad: cantidad));
    }
  }

  void removerItem(String producto_id) {
    _items.remove(producto_id);
  }

  void incrementarCantidadItem(String producto_id) {
    if (_items.containsKey(producto_id)) {
      _items.update(
          producto_id,
          (old) => Item(
              id: old.id,
              nombre: old.nombre,
              precio: old.precio,
              imagen: old.imagen,
              cantidad: old.cantidad + 1));
    }
  }

  void decrementarCantidadItem(String producto_id) {
    if (!_items.containsKey(producto_id)) return;
    if (_items[producto_id].cantidad > 1) {
      _items.update(
          producto_id,
          (old) => Item(
              id: old.id,
              nombre: old.nombre,
              precio: old.precio,
              imagen: old.imagen,
              cantidad: old.cantidad - 1));
    } else {
      _items.remove(producto_id);
    }
  }

  void removeCarrito() {
    _items = {};
  }
}
