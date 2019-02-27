import 'package:flutter/material.dart';
import './pages/auth.dart';
// import 'package:flutter/rendering.dart';

import './pages/product_admin.dart';
import './pages/home.dart';

main() {
  // debugPaintSizeEnabled = true;
  runApp(UdemyCourseApp());
}

class UdemyCourseApp extends StatelessWidget {
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
        '/home': (BuildContext context) => HomePage(),
        '/admin': (BuildContext context) => ProductAdminPage(),
      },
    );
  }
}
