import 'package:flutter/material.dart';

class ProductListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // This page is only a tab view inside product_admin page
    // So do not create a new Scaffold.
    // Only create body elements that'll replace the body in product_admin
    return Center(
      child: Text('List my products'),
    );
  }
}
