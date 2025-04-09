import 'package:flutter/material.dart';
import 'package:donut_app_4sa/pages/utils/shopping_cart.dart';
import 'package:donut_app_4sa/pages/utils/my_tab.dart';
import 'package:donut_app_4sa/tabs/donut_tab.dart';
import 'package:donut_app_4sa/tabs/burger_tab.dart';
import 'package:donut_app_4sa/tabs/smoothie_tab.dart';
import 'package:donut_app_4sa/tabs/pancakes_tab.dart';
import 'package:donut_app_4sa/tabs/pizza_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Lista de tabs con sus propiedades
  final List<Map<String, dynamic>> tabData = [
    {
      'iconPath': 'lib/icons/donut.png',
      'categoryName': 'Donuts',
      'widget': DonutTab(),
    },
    {
      'iconPath': 'lib/icons/burger.png',
      'categoryName': 'Burger',
      'widget': BurgerTab(),
    },
    {
      'iconPath': 'lib/icons/smoothie.png',
      'categoryName': 'Smoothie',
      'widget': SmoothieTab(),
    },
    {
      'iconPath': 'lib/icons/pancakes.png',
      'categoryName': 'Pancakes',
      'widget': PancakesTab(),
    },
    {
      'iconPath': 'lib/icons/pizza.png',
      'categoryName': 'Pizza',
      'widget': PizzaTab(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabData.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Icon(Icons.menu, color: Colors.grey[800]),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Icon(Icons.person, color: Colors.grey[800]),
            ),
          ],
        ),
        body: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Row(
                children: [
                  Text("I want to ", style: TextStyle(fontSize: 32)),
                  Text("Eat...", 
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
            // Barra de pestañas con iconos y nombres
            TabBar(
              tabs: tabData.map((tab) => MyTab(
                iconPath: tab['iconPath'],
                categoryName: tab['categoryName'],
              )).toList(),
              labelColor: Colors.pink,
              unselectedLabelColor: Colors.grey[600],
              indicatorColor: Colors.pink,
            ),
            Expanded(
              child: TabBarView(
                children: tabData.map<Widget>((tab) {
                  // Conversión explícita del widget
                  return tab['widget'] as Widget;
                }).toList(),
              ),
            ),
            const ShoppingCart(),
          ],
        ),
      ),
    );
  }
}