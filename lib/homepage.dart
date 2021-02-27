import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  final String title;
  MyHomePage({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.teal.shade200, title: Text(title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/logo_unaide2.png',
              scale: .8,
            ),
            SizedBox(height: 30),
            Text('Pourquoi retenir ma candidature ?',
                style: TextStyle(fontSize: 20)),
            SizedBox(height: 30),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/secondpage',
                );
              },
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0)),
              child: Icon(Icons.arrow_forward, color: Colors.white),
              color: Colors.teal.shade200,
            ),
          ],
        ),
      ),
    );
  }
}