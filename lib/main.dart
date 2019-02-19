// import a sub-package material.dart from flutter package
// This material.dart contains StetelessWidget which we use in our app
import 'package:flutter/material.dart';

main() {
  // runApp calls the widget UdemyCourseApp
  // without inserting the widgets inside main, you cannot render them in UI.
  runApp(UdemyCourseApp());
}
// This can also be written as main() => runApp(UdemyCourseApp());

// create a root Widget
// which extends StatelessWidget
// Every class has to extend a widget and build some properties so that
// dart understands that this class is a widget that can be rendered in UI
class UdemyCourseApp extends StatelessWidget {
  // Every class MUST have a build() method
  // The only param for build is context
  // build() MUST return a result.
  // Widget & BuildContext - These are data types of the method and argument respectively.
  @override
  // We override the build method of StetelessWidget. The code works without this code.
  Widget build(BuildContext context) {
    // MaterialApp is a spaciel widget shipped with Fluitter
    // to wrap our apps and provide all themes, navigators etc.
    // Now configure MaterialApp() object (this MaterialApp() is a constructor of the MaterialApp class) to do something

    // MaterialApp() requires named arguments
    // Scaffold creates a wrapper widget for all widgets
    // The app contains an appBar (which is again a widget which accepts another widget called Title)
    // The title widget accepts another widget Text, which accepts a string.

    // To get a list of widgets/arguments a widget accepts, just type Ctrl+space from inside the paranthesis ()
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('EasyList'),
          ),
          body: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10.0),
                child: RaisedButton(
                  onPressed: () {},
                  child: Text('Add Product'),
                ),
              ),
              Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/food.jpg'),
                    Text('Sample Food Image')
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
