import 'package:flutter/material.dart';

class ProducControl extends StatelessWidget {
  final Function addProduct;
  final Function removeProduct;

  ProducControl(this.addProduct, this.removeProduct);

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        new Expanded(
          child: RaisedButton(
            color: Theme.of(context).primaryColor,
            onPressed: () {
              this.addProduct('Sweets');
            },
            child: Text('Add Product'),
          ),
        ),
        new Expanded(
          child: RaisedButton(
            color: Theme.of(context).primaryColor,
            onPressed: () {
              this.removeProduct('Sweets');
            },
            child: Text('Remove Product'),
          ),
        )
      ],
    );
  }
}
