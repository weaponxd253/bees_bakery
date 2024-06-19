import 'package:flutter/material.dart';

class BrowseDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> arguments = ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    return Scaffold(
      appBar: AppBar(
        title: Text(arguments['title']!),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(arguments['image']!),
            SizedBox(height: 10),
            Text(
              arguments['title']!,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(arguments['description']!),
            SizedBox(height: 10),
            Text('Price: ${arguments['price']}'),
          ],
        ),
      ),
    );
  }
}
