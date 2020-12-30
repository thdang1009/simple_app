import 'package:flutter/material.dart';

import 'package:simple_app/product.dart';
import 'package:simple_app/product_control.dart';
import 'package:simple_app/products.dart';

class ProductManager extends StatefulWidget {
  final List<Product> startingProduct;
  ProductManager(this.startingProduct);
  @override
  State<StatefulWidget> createState() => _ProductManagerState();
}

class _ProductManagerState extends State<ProductManager> {
  List<Product> _products = [];
  @override
  void initState() {
    _products = _products + widget.startingProduct;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10.0),
          child: ProductControl(addProduct),
        ),
        Products(_products)
      ],
    );
  }

  void addProduct() {
    setState(() {
      _products.add(Product('Added Product', 'food.jpg'));
    });
  }
}
