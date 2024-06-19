import 'package:flutter/material.dart';
import '../models/item.dart';

class CartProvider with ChangeNotifier {
  final List<Item> _items = [];

  List<Item> get items => _items;

  void addItem(Item item) {
    _items.add(item);
    notifyListeners();
  }

  void removeItem(Item item) {
    _items.remove(item);
    notifyListeners();
  }

  void clearCart() {
    _items.clear();
    notifyListeners();
  }

  double get totalPrice {
    return _items.fold(0, (total, item) => total + double.parse(item.price.replaceAll('\$', '')));
  }
}
