import 'package:flutter/material.dart';
import './product_manager.dart';
// import 'package:flutter/rendering.dart';

main() {
  // debugPaintSizeEnabled = true;
  runApp(UdemyCourseApp());
}

class UdemyCourseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowMaterialGrid: true,
      theme:ThemeData(
        primarySwatch: Colors.indigo 
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('EasyList'),
        ),
        body: ProductManager(startingProduct: 'Food Tester'),
      ),
    );
  }
}
