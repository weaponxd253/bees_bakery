import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cart_provider.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cart = context.watch<CartProvider>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: cart.items.isEmpty
          ? Center(child: Text('Your cart is empty'))
          : ListView.builder(
              itemCount: cart.items.length,
              itemBuilder: (context, index) {
                final item = cart.items[index];
                return ListTile(
                  leading: Image.asset(item.image),
                  title: Text(item.title),
                  subtitle: Text(item.price),
                  trailing: IconButton(
                    icon: Icon(Icons.remove_circle_outline),
                    onPressed: () {
                      cart.removeItem(item);
                    },
                  ),
                );
              },
            ),
      bottomNavigationBar: cart.items.isEmpty
          ? SizedBox.shrink()
          : Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/checkout');
                },
                child: Text('Checkout (\$${cart.totalPrice.toStringAsFixed(2)})'),
              ),
            ),
    );
  }
}
