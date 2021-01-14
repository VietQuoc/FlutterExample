import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'product_data.dart';

class ProductBox extends StatelessWidget{
  const ProductBox(this.name, this.description, this.price, this.image);
  final String name;
  final String description;
  final int price;
  final String image;

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Message"),
          content: const Text("Please don't click!"),
          actions: [
            FlatButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Close"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2), height: 90,
      child: GestureDetector(
        onTap: () => _showDialog(context),
        child: Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("assets/appimages/$image"),
              Expanded(
                child:
                Container(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
                      Text(description),
                      Text("Price: $price"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<Widget> getListProductWidgets()
  {
    final List<Widget> list = [];
    for(var i = 0; i < Data.listData.length; i++){
        list.add(ProductBox(Data.listData[i][0].toString(), Data.listData[i][1].toString(), int.parse(Data.listData[i][2].toString()), Data.listData[i][3].toString()));
    }
    return list;
  }
