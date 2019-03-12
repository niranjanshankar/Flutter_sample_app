import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<Map> products;

// SHORTCUT TO CREATE A CONSTRUCTUR THAT GETS AN INPUT AND WRITES IT TO LOCAL PROPERTY
  Products(this.products);

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(products[index]['asset']),
          Text(products[index]['title']),
          Text(products[index]['description']),
          // Text(products[index]['price']),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Details'),
                onPressed: () {
                  Navigator.pushNamed(context, '/product/' + index.toString());
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildProductList() {
    Widget productCard;
    if (products.length > 0) {
      productCard = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: products.length,
      );
    } else {
      productCard = Center(
        child: Text('No products found'),
      );
    }

    return productCard;
  }

  @override
  Widget build(BuildContext context) {
    return _buildProductList();
  }
}
