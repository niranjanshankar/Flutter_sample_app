import 'package:flutter/material.dart';
import './pages/product.dart';
import './pages/auth.dart';
// import 'package:flutter/rendering.dart';

import './pages/product_admin.dart';
import './pages/home.dart';

main() {
  // debugPaintSizeEnabled = true;
  runApp(UdemyCourseApp());
}

class UdemyCourseApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _UdemyCourseAppState();
  }
}

class _UdemyCourseAppState extends State<UdemyCourseApp> {
  List<Map<String, String>> _products = [];

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
    return MaterialApp(
      // debugShowMaterialGrid: true,
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: AuthPage(),
      routes: {
        // The below line is same as: home: AuthPage()
        // You cannot have both in your code. Use either of these
        // '/' : (BuildContext context) => AuthPage(),
        '/home': (BuildContext context) =>
            HomePage(_products, _addProduct, _deleteProductAtIndex),
        '/admin': (BuildContext context) => ProductAdminPage(),
      },
      // This is to create dynamic routes
      // when you have to parse route data
      onGenerateRoute: (RouteSettings settings) {
        final List<String> pathElements = settings.name.split('/');

        if (pathElements[0] != '') {
          return null;
        } else if (pathElements[1] == 'product') {
          final int index = int.parse(pathElements[2]);
          return MaterialPageRoute(
            builder: (BuildContext context) => ProductPage(
                _products[index]['asset'], _products[index]['title']),
          );
        }
        return null;
      },
      // This will be triggered when users route to a route that doesn't exist
      // we have rerouted such routes to home page now
      onUnknownRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            builder: (BuildContext context) =>
                HomePage(_products, _addProduct, _deleteProductAtIndex));
      },
    );
  }
}
