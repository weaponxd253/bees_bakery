import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/item.dart';
import '../providers/item_provider.dart';
import '../providers/cart_provider.dart';

class BakeryHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deals = context.watch<ItemProvider>().deals;
    final cart = context.watch<CartProvider>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Bee\'s Bakery'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.pushNamed(context, '/cart');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Deals Section
              Text(
                'Deals',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Container(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: deals.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          '/dealDetail',
                          arguments: deals[index],
                        );
                      },
                      child: Container(
                        width: 160,
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          color: Colors.orange[100],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              deals[index].image,
                              height: 100,
                            ),
                            SizedBox(height: 10),
                            Text(
                              deals[index].title,
                              style: TextStyle(fontSize: 18),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                cart.addItem(deals[index]);
                              },
                              child: Text('Add to Cart'),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              // Categories Section
              Text(
                'Categories',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Container(
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5, // Number of categories
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          '/categoryDetail',
                          arguments: {
                            'title': 'Category ${index + 1}',
                            'description': 'This is the description of Category ${index + 1}.',
                            'image': 'https://via.placeholder.com/150'
                          },
                        );
                      },
                      child: Container(
                        width: 120,
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          color: Colors.green[100],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'Category ${index + 1}',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              // Browse Section
              Text(
                'Browse',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 10, // Number of browse items
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        '/browseDetail',
                        arguments: {
                          'title': 'Browse Item ${index + 1}',
                          'description': 'This is the description of Browse Item ${index + 1}.',
                          'price': '\$${(index + 1) * 5}',
                          'image': 'https://via.placeholder.com/150'
                        },
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        color: Colors.blue[100],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        title: Text('Browse Item ${index + 1}'),
                        subtitle: Text('Description of item ${index + 1}'),
                        leading: Icon(Icons.bakery_dining),
                        trailing: ElevatedButton(
                          onPressed: () {
                            cart.addItem(Item(
                              title: 'Browse Item ${index + 1}',
                              description: 'This is the description of Browse Item ${index + 1}.',
                              price: '\$${(index + 1) * 5}',
                              image: 'https://via.placeholder.com/150',
                            ));
                          },
                          child: Text('Add to Cart'),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
