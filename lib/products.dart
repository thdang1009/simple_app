import 'package:flutter/material.dart';
import 'package:simple_app/model/product.dart';

class Products extends StatelessWidget {
  List<Product> products = [
    Product('Lẩu', 'lau.jpg'),
    Product('Hải Sản', 'hai_san.jpg'),
    Product('Thịt Nướng', 'thit_nuong.jpg')
  ];

  Products(this.products);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: products
          .map((el) => Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/' + el.path),
                    Text(el.name)
                  ],
                ),
              ))
          .toList(),
    );
  }
}
