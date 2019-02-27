import 'package:flutter/material.dart';

import './products.dart';
import './product_control.dart';

class ProductManager extends StatefulWidget {
  final Map startingProduct;

  ProductManager({this.startingProduct});

  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<Map> _products = [];

  @override
  void initState() {
    super.initState();
    if (widget.startingProduct != null) {
      _products.add(widget.startingProduct);
    }
  }

  void _addProduct(product) {
    setState(() {
      _products.add(product);
    });
  }

  void _deleteProductAtIndex(index) {
    setState(() {
      _products.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10.0),
          child: ProducControl(_addProduct),
        ),
        Expanded(
          child:
              Products(_products, deleteProductAtIndex: _deleteProductAtIndex),
        ),
      ],
    );
  }
}
