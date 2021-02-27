import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:flutter_application_1/secondPage.dart';
import 'package:flutter_application_1/ThirdPage.dart';

void main() {
  runApp(UnaideApp());
}

class UnaideApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => MyHomePage(title: 'Kevin Detournay'),        
        '/secondpage': (context) => SecondPage(title:'motivations'),
        '/thirdpage': (context) => ThirdPage(title:'motivations suite'),
      },
    );
  }
}

