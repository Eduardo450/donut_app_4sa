import 'package:donut_app_4sa/pages/utils/donut_tile.dart';
import 'package:flutter/material.dart';
import 'package:donut_app_4sa/pages/utils/product.dart';

class PizzaTab extends StatelessWidget {
  final List<Product> pizzaOnSale = [
    Product(
      name: "Pepperoni",
      store: "Domino's",
      price: 53.0,
      color: Colors.blue,
      imagePath: "lib/images/Pizza/pepperoni.png",
      category: "Pizza",
    ),
    Product(
      name: "Cheese",
      store: 'Pizza Hut',
      price: 56.0,
      color: Colors.red,
      imagePath: "lib/images/Pizza/cheese.png",
      category: "Pizza",
    ),
    Product(
      name: "Hawaiian",
      store: "Super Pizza",
      price: 45.0,
      color: Colors.purple,
      imagePath: "lib/images/Pizza/hawaiian.png",
      category: "Pizza",
    ),
    Product(
      name: "Mushroom",
      store: "Little Caesars",
      price: 49.0,
      color: Colors.brown,
      imagePath: "lib/images/Pizza/mushroom.png",
      category: "Pizza",
    ),
    Product(
      name: "Vegetables",
      store: "La Pizza",
      price: 42.0,
      color: Colors.green,
      imagePath: "lib/images/Pizza/vegetables.png",
      category: "Pizza",
    ),
    Product(
      name: "Meat",
      store: "Wao Pizzini",
      price: 51.0,
      color: Colors.pink,
      imagePath: "lib/images/Pizza/meat.png",
      category: "Pizza",
    ),
    Product(
      name: "Beef",
      store: "Las Pipshash",
      price: 53.0,
      color: Colors.yellow,
      imagePath: "lib/images/Pizza/beef.png",
      category: "Pizza",
    ),
    Product(
      name: "Mexican",
      store: "Luigi Pizza",
      price: 47.0,
      color: Colors.orange,
      imagePath: "lib/images/Pizza/mexican.png",
      category: "Pizza",
    ),
  ];

  PizzaTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemCount: pizzaOnSale.length,
      padding: const EdgeInsets.all(12),
      itemBuilder: (context, index) {
        return DonutTile(
          product: pizzaOnSale[index],
        );
      },
    );
  }
}