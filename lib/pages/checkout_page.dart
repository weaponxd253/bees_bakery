import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cart_provider.dart';
import 'confirmation_page.dart';

class CheckoutPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _addressController = TextEditingController();
  final _creditCardController = TextEditingController();

  void _checkout(BuildContext context) {
    if (_formKey.currentState?.validate() ?? false) {
      final cart = Provider.of<CartProvider>(context, listen: false);
      final totalPrice = cart.totalPrice.toStringAsFixed(2);

      // Clear the cart
      cart.clearCart();

      // Navigate to the confirmation page
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => ConfirmationPage(
            address: _addressController.text,
            totalPrice: totalPrice,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<CartProvider>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: _addressController,
                decoration: InputDecoration(labelText: 'Shipping Address'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your shipping address';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _creditCardController,
                decoration: InputDecoration(labelText: 'Credit Card Number'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your credit card number';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => _checkout(context),
                child: Text('Place Order (\$${cart.totalPrice.toStringAsFixed(2)})'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
