import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/item.dart';
import 'providers/item_provider.dart';
import 'providers/cart_provider.dart';
import 'pages/home_page.dart';
import 'pages/deal_detail_page.dart';
import 'pages/category_detail_page.dart';
import 'pages/browse_detail_page.dart';
import 'pages/sign_in_page.dart';
import 'pages/sign_up_page.dart';
import 'pages/forgot_password_page.dart';
import 'pages/cart_page.dart';
import 'pages/checkout_page.dart';
import 'pages/confirmation_page.dart';

void main() => runApp(
  MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => ItemProvider()),
      ChangeNotifierProvider(create: (_) => CartProvider()),
    ],
    child: BakeryApp(),
  ),
);

class BakeryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignInPage(),
      routes: {
        '/home': (context) => BakeryHomePage(),
        '/dealDetail': (context) => DealDetailPage(),
        '/categoryDetail': (context) => CategoryDetailPage(),
        '/browseDetail': (context) => BrowseDetailPage(),
        '/signIn': (context) => SignInPage(),
        '/signUp': (context) => SignUpPage(),
        '/forgotPassword': (context) => ForgotPasswordPage(),
        '/cart': (context) => CartPage(),
        '/checkout': (context) => CheckoutPage(),
        // Remove the route for ConfirmationPage as we are navigating to it directly using MaterialPageRoute
      },
    );
  }
}
