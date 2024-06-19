import 'package:flutter/material.dart';
import '../models/item.dart';

class ItemProvider with ChangeNotifier {
  final List<Item> _deals = [
    Item(
      title: 'Deal 1',
      description: 'This is the description of Deal 1.',
      price: '\$10',
      image: 'assets/images/cake_brownies.jpg',
    ),
    Item(
      title: 'Deal 2',
      description: 'This is the description of Deal 2.',
      price: '\$20',
      image: 'assets/images/cake_chocolate.jpg',
    ),
    Item(
      title: 'Deal 3',
      description: 'This is the description of Deal 3.',
      price: '\$30',
      image: 'assets/images/cake_filled.jpg',
    ),
    Item(
      title: 'Deal 4',
      description: 'This is the description of Deal 4.',
      price: '\$40',
      image: 'assets/images/cake_fruit.jpg',
    ),
    Item(
      title: 'Deal 5',
      description: 'This is the description of Deal 5.',
      price: '\$50',
      image: 'assets/images/muffin.jpg',
    ),
  ];

  List<Item> get deals => _deals;
}
