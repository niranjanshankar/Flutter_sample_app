import 'package:flutter/material.dart';

import './home.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('EasyList'),
        ),
        body: Center(
          child: RaisedButton(
            child: Text('LOGIN'),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/home');
            },
          ),
        ));
  }
}
