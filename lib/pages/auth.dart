import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AuthPageState();
  }
}

class _AuthPageState extends State<AuthPage> {
  String _email = '';
  String _password = '';
  bool _acceptTerms = false;

  void _showToast(BuildContext context) {
    final scaffold = Scaffold.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content:
            const Text('Email or password field is empty, please enter value!'),
        action: SnackBarAction(
            label: 'OK', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EasyList'),
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(labelText: 'Email ID'),
              onChanged: (String val) {
                setState(() {
                  _email = val;
                });
              },
            ),
            TextField(
              // obscure a text field - used for passwords
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
              onChanged: (String val) {
                setState(() {
                  _password = val;
                });
              },
            ),
            SwitchListTile(
              title: Text('Accept Terms'),
              onChanged: (bool val) {
                setState(() {
                  _acceptTerms = val;
                });
              },
              value: _acceptTerms,
            ),
            SizedBox(height: 10.0),
            RaisedButton(
              child: Text('LOGIN'),
              color: Theme.of(context).accentColor,
              textColor: Colors.white,
              onPressed: () {
                if (_email.trim() != '' && _password.trim() != '') {
                  Navigator.pushReplacementNamed(context, '/home');
                } else if (_email.trim() == '' || _password.trim() == '') {
                  _showToast(context);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
