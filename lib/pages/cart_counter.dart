import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart_model.dart'; // Assuming cart_model.dart is in lib/models/

class CartCounterExamplePage extends StatelessWidget {
  const CartCounterExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart Counter Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Total Price:',
              style: TextStyle(fontSize: 20),
            ),
            // Consumer widget to listen to CartModel changes
            Consumer<CartModel>(
              builder: (context, cart, child) {
                // This builder function is called whenever notifyListeners() is called in CartModel
                return Text(
                  '\$${cart.totalPrice.toStringAsFixed(2)}',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Access CartModel to add an item
                    // Provider.of<CartModel>(context, listen: false) can also be used here
                    // if you only need to call a method and not rebuild the widget.
                    // For simplicity, consumer's 'cart' instance can call methods too.
                    final cart = context.read<CartModel>();
                    cart.add(10.0); // Add a dummy item with price 10.0
                  },
                  child: const Text('Add Item (\$10)'),
                ),
                ElevatedButton(
                  onPressed: () {
                    final cart = context.read<CartModel>();
                    // Example: Try to remove an item of price 10.0
                    // Note: Your remove method removes the first occurrence.
                    // Consider how you want to handle removal if there are multiple items of the same price.
                    if (cart.cartList.contains(10.0)) {
                       cart.remove(10.0);
                    }
                  },
                  child: const Text('Remove Item (\$10)'),
                ),
              ],
            ),
             const SizedBox(height: 20),
            // You could also display the number of items
            Consumer<CartModel>(
              builder: (context, cart, child) {
                return Text('Items in cart: ${cart.cartList.length}');
              },
            ),
          ],
        ),
      ),
    );
  }
}
