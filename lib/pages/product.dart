import 'package:flutter/material.dart';
import 'dart:async';

class ProductPage extends StatelessWidget {
  final String asset;
  final String title;

  ProductPage(this.asset, this.title);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      // WillPopScope is used to perform some action 
      // on pressing "back button" of the routed page

      // Every WillPopScope widget requires an onWillPop function
      // which returns true or false as a Future.value()
      // If TRUE -> page will pop, otherwise not.
      onWillPop: () {
        print("Back button pressed!");
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(asset),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text(title),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: RaisedButton(
                child: Text('Delete'),
                color: Theme.of(context).accentColor,
                onPressed: () {
                  print("Delete button pressed!");
                  Navigator.pop(context, true);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
