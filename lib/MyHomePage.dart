import 'package:flutter/material.dart';
import 'package:my_app/ProductBox.dart';
import 'package:my_app/Product.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  final items = Product.getProducts();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product navigation")),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ProductBox(item: items[index]);
        },
      ),
    );
  }
}
