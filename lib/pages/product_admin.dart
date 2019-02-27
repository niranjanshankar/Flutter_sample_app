import 'package:flutter/material.dart';

import './home.dart';

class ProductAdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text('Choose'),
            ),
            ListTile(
              title: Text('Home Page'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => HomePage()),
                );
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Product Admin'),
      ),
      body: Center(
        child: Text('Dummy Content!'),
      ),
    );
  }
}
