import 'package:flutter/material.dart';
import 'package:my_app/Product.dart';

class RatingBox extends StatelessWidget {
  RatingBox({Key key, this.item}) : super(key: key);
  final Product item;

  Widget build(BuildContext context) {
    const double size = 30;

    return Container(
      padding: const EdgeInsets.all(0),
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(0),
            child: IconButton(
              icon: (item.rating >= 1 ? const Icon(Icons.star, size: size,) : const Icon(Icons.star_border, size: size,)),
              color: Colors.red[500],
              onPressed: () => this.item.updateRating(1),
              iconSize: size,
            ),
          ),
          Container(
              padding: const EdgeInsets.all(0),
              child: IconButton(
                icon: (item.rating >= 2 ? Icon(Icons.star, size: size,) :
                Icon(Icons.star_border, size: size,)),
                color: Colors.red[500],
                onPressed: () => this.item.updateRating(2),
                iconSize: size,
              ),
          ),
          Container(
            padding: EdgeInsets.all(0),
            child: IconButton(
                icon: (item.rating >= 3 ? Icon(Icons.star, size: size,) :
                Icon(Icons.star_border, size: size,)),
                color: Colors.red[500],
                onPressed: () => this.item.updateRating(3),
                iconSize: size,
            ),
          ),
        ],
      ),
    );
  }
}
