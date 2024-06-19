import 'package:flutter/material.dart';
import '../models/item.dart';

class DealDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Item arguments = ModalRoute.of(context)?.settings.arguments as Item;
    return Scaffold(
      appBar: AppBar(
        title: Text(arguments.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(arguments.image),
            SizedBox(height: 10),
            Text(
              arguments.title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(arguments.description),
            SizedBox(height: 10),
            Text('Price: ${arguments.price}'),
          ],
        ),
      ),
    );
  }
}
