import 'package:flutter/material.dart';
import 'product.dart';

class Products extends StatelessWidget {
  final List<Product> products;

  Products(this.products);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: products
          .map((element) => Card(
                child: Column(
                  children: <Widget>[
                    // Image.asset('assets/' + element.path),
                    Text(element.name)
                  ],
                ),
              ))
          .toList(),
    );
  }
}
