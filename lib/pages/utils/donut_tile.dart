import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:donut_app_4sa/pages/utils/cart_provider.dart';
import 'package:donut_app_4sa/pages/utils/product.dart';

class DonutTile extends StatelessWidget {
  final Product product;

  const DonutTile({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: product.color[50],
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: product.color[100],
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      topRight: Radius.circular(24)
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 15),
                  child: Text(
                    "\$${product.price.toStringAsFixed(0)}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: product.color[800],
                    )
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Image.asset(
                product.imagePath,
                height: 114, // Altura fija como en original
                width: 114,  // Ancho fijo como en original
              ),
            ),

            Text(
              product.name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.black87,
              )
            ),
            
            const SizedBox(height: 4), // Espaciado original
            
            Text(
              product.store,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.black54,
              )
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.grey[800],
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: const Size(29, 29),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    onPressed: () {
                      Provider.of<CartProvider>(context, listen: false).addToCart(product);
                    },
                    child: const Text(
                      "Add",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}