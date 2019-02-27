import 'package:flutter/material.dart';
import './pages/auth.dart';
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
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: AuthPage(),
    );
  }
}
