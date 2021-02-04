import 'package:scoped_model/scoped_model.dart';
import 'package:flutter/material.dart';
import 'product_data.dart';

class Product extends Model {
  final String name;
  final String description;
  final int price;
  final String image;
  int rating;
  Product(this.name, this.description, this.price, this.image, this.rating);
  factory Product.fromMap(Map<String, dynamic> json) {
    return Product( 
      json['name'].toString(), 
      json['description'].toString(), 
      int.parse(json['price'].toString()) ,
      json['image'].toString(), 
      int.parse(json['rating'].toString()), 
    ); 
  }
  void updateRating(int myRating) {
    rating = myRating;
    notifyListeners();
  }

  static List<Product> getProducts() {
    List<Product> items = <Product>[];
    for(var i = 0; i < Data.listData.length; i++) {
      items.add(
        Product(
          Data.listData[i][0].toString(),
          Data.listData[i][1].toString(),
          int.parse(Data.listData[i][2].toString()),
          Data.listData[i][3].toString(),
          0,
        )
      );
    }
    return items; 
  }
}