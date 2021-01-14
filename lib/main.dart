import 'package:flutter/material.dart';
import 'product_box.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo', theme: ThemeData(
      primarySwatch: Colors.red,),
      home: const MyHomePage(title: 'Product layout demo home page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Product Listing")),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(2, 10, 2, 10),
          children: getListProductWidgets().map<Widget>((item)=> item).toList(),
        ),
    );
  }
}