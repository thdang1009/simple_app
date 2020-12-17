import 'package:flutter/material.dart';
import 'package:simple_app/product.dart';
import 'package:simple_app/products.dart';

class ProductManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ProductManagerState();
}

/*
    Product('Lẩu', 'lau.jpg'),
    Product('Hải Sản', 'hai_san.jpg'),
    Product('Thịt Nướng', 'thit_nuong.jpg')
*/
class _ProductManagerState extends State<ProductManager> {
  List<Product> _products = [
    Product('Lẩu', 'lau.jpg'),
    Product('Hải Sản', 'hai_san.jpg'),
    Product('Thịt Nướng', 'thit_nuong.jpg')
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            onPressed: () {
              setState(() {
                _products.add(Product('Added Product', 'food.jpg'));
              });
            },
            child: Text('Add Product'),
          ),
        )
      ],
      Products(_products);
    );
  }
}
