import 'package:flutter/material.dart';

import '../product_manager.dart';
// import './product_admin.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Drawer is the widget used for hamburger menu

      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              // this boolean ensures you hide the hamburger icon
              // when drawer is open
              automaticallyImplyLeading: false,
              title: Text('Choose'),
            ),
            ListTile(
              title: Text('Manage Products'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/admin');
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('EasyList'),
      ),
      body: ProductManager(),
    );
  }
}
