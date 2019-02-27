import 'package:flutter/material.dart';

class ProducControl extends StatelessWidget {
  final Function addProduct;
  // final Function removeProduct;

  ProducControl(this.addProduct);

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        new Expanded(
          child: RaisedButton(
            color: Theme.of(context).primaryColor,
            onPressed: () {
              this.addProduct({'title' : 'Sweets', 'asset' : 'assets/food.jpg'});
            },
            child: Text('Add Product'),
          ),
        ),
        
      ],
    );
  }
}
