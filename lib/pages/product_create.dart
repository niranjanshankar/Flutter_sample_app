import 'package:flutter/material.dart';

class ProductCreatePage extends StatefulWidget {
  final Function addProduct;

  ProductCreatePage(this.addProduct);

  @override
  State<StatefulWidget> createState() {
    return _ProductCreatePageState();
  }
}

class _ProductCreatePageState extends State<ProductCreatePage> {
  String _title = '';
  String _description = '';
  double _price = 0.0;

  @override
  Widget build(BuildContext context) {
    // This page is only a tab view inside product_admin page
    // So do not create a new Scaffold.
    // Only create body elements that'll replace the body in product_admin
    return Container(
      margin: EdgeInsets.all(10.0),
      child: ListView(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(labelText: 'Product title'),
            autofocus: true,
            onChanged: (String val) {
              _title = val;
            },
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Product description'),
            // maxLines enables multi-line input
            maxLines: 4,
            onChanged: (String val) {
              _description = val;
            },
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Product price'),
            // This value enables a numeric keyboard
            keyboardType: TextInputType.number,
            onChanged: (String val) {
              _price = double.parse(val);
            },
          ),
          SizedBox(height: 10.0),
          RaisedButton(
            child: Text('Add Product'),
            color: Theme.of(context).accentColor,
            textColor: Colors.white,
            onPressed: () {
              final Map<String, dynamic> product = {
                'asset': 'assets/food.jpg',
                'title': _title,
                'description': _description,
                'price': _price
              };
              widget.addProduct(product);
              Navigator.pushReplacementNamed(context, '/home');
            },
          )
        ],
      ),
    );
  }
}
