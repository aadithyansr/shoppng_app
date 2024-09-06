import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommc/models/product_s.dart';
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

  double get totalAmount {
    return _cartItems.fold(0.0, (sum, favItems) => sum + favItems.price);
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

class UserProvider with ChangeNotifier {
  String _name = '';
  String get name => _name;
  Future<void> fetchName(String uid) async {
    print(uid);
    try {
      var userDoc =
          await FirebaseFirestore.instance.collection('users').doc(uid).get();
      _name = userDoc.data()?['name'] ?? 'no';
      print(name);
      notifyListeners();
    } catch (e) {
      print('error: $e');
    }
  }
}
