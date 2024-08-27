import 'package:ecommc/models/products.dart';
import 'package:flutter/foundation.dart';

class CartProvider with ChangeNotifier {
  final List<Product> _cartItems = [];

  List<Product> get cartItems => _cartItems;

  void addToCart(Product product) {
    _cartItems.add(product);
    notifyListeners();
  }

  void removeFromCart(Product product) {
    _cartItems.remove(product);
    notifyListeners();
  }
}

class FavProvider with ChangeNotifier {
  final List<Product> _favItems = [];

  List<Product> get favItems => _favItems;

  void addToCart(Product product) {
    _favItems.add(product);
    notifyListeners();
  }

  void removeFromCart(Product product) {
    _favItems.remove(product);
    notifyListeners();
  }
}
