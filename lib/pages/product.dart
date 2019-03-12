import 'package:flutter/material.dart';
import 'dart:async';

class ProductPage extends StatelessWidget {
  final String asset;
  final String title;

  ProductPage(this.asset, this.title);

  _showAlert(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              title: Text("Are you sure?"),
              content: Text('This action cannot be undone'),
              actions: <Widget>[
                FlatButton(
                  child: Text('DISCARD'),
                  onPressed: () {
                    // this closes the pop-up
                    Navigator.pop(context);
                  },
                ),
                FlatButton(
                  child: Text('DELETE'),
                  onPressed: () {
                    print("Delete button pressed!");
                    // this closes the pop-up and next line deletes the item.
                    Navigator.pop(context);
                    Navigator.pop(context, true);
                  },
                ),
              ]);
        });
  }

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
                  // this will show a pop-up
                  _showAlert(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
