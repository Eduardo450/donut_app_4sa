import 'package:flutter/material.dart';
import 'package:donut_app_4sa/pages/utils/product.dart';

class CartProvider extends ChangeNotifier {
  final List<Product> _cartItems = [];

  List<Product> get cartItems => _cartItems;

  double get totalPrice {
    return _cartItems.fold(0, (sum, item) => sum + (item.price * item.quantity));
  }

  int get itemCount {
    return _cartItems.fold(0, (sum, item) => sum + item.quantity);
  }

  void addToCart(Product product) {
    final index = _cartItems.indexWhere((item) => item.name == product.name);
    if (index >= 0) {
      _cartItems[index].quantity++;
    } else {
      _cartItems.add(Product(
        name: product.name,
        store: product.store,
        price: product.price,
        imagePath: product.imagePath,
        color: product.color,
        category: product.category,
        quantity: 1,
      ));
    }
    notifyListeners();
  }

  void removeFromCart(Product product) {
    final index = _cartItems.indexWhere((item) => item.name == product.name);
    if (index >= 0) {
      if (_cartItems[index].quantity > 1) {
        _cartItems[index].quantity--;
      } else {
        _cartItems.removeAt(index);
      }
      notifyListeners();
    }
  }

  void removeItemCompletely(Product product) {
    _cartItems.removeWhere((item) => item.name == product.name);
    notifyListeners();
  }

  void clearCart() {
    _cartItems.clear();
    notifyListeners();
  }
}