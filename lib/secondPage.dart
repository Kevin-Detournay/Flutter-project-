import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String title;
  SecondPage({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.teal.shade200, title: Text(title)),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 30),
              Text('Il est primordial pour moi de travailler dans un milieu qui a du sens.',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,),
                  SizedBox(height: 30),

              Text('C\'est pour cela que je tiens tant à intégrer votre équipe',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,),
                  SizedBox(height: 30),    

              Text('J\'ai donc appris les bases du Dart et de Flutter spécialement pour cette offre',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,),
                  SizedBox(height: 30),
            
              Text('(Au final ça n\'est pas si compliqué: quand les concepts de la programation sont là, on trouve des similitudes dans plusieurs langages)',
                  style: TextStyle(fontSize: 15),
                  textAlign: TextAlign.center,),
                  SizedBox(height: 30),

              RaisedButton(
                onPressed: () {
              Navigator.pushNamed(
                  context,
                  '/thirdpage',
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
      ),
    );
  }
}
