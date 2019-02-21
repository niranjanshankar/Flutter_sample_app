import 'package:flutter/material.dart';

import './products.dart';
import './product_control.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager({this.startingProduct});

  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    super.initState();
    if(widget.startingProduct != null){
      _products.add(widget.startingProduct);
    }
  }

  void _addProduct(product) {
    setState(() {
      _products.add(product);
    });
  }

  void _removeProduct(product) {
    setState(() {
      _products.remove(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10.0),
          child: ProducControl(_addProduct, _removeProduct),
        ),
        Expanded(
          child: Products(_products),
        ),
      ],
    );
  }
}
