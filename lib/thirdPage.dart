import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ThirdPage extends StatelessWidget {
  final String title;
  ThirdPage({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.teal.shade200, title: Text(title)),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 30),
              Text(
                'J\'ai une bonne sensibilité graphique et un bon raisonnement algorithmique',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              Text(
                'Je suis capable de produire un code propre et organisé.',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
                    Text(
                'Pour moi la technologie utilisée n\'est qu\'un medium, et peut toujours s\'apprendre.',
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              FlatButton(
                onPressed: () {
                  _settingModalBottomSheet(context);
                },
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)),
                child: Icon(Icons.arrow_downward, color: Colors.white),
                color: Colors.teal.shade200,
              )
            ],
          ),
        ),
      ),
    );
  }
}

void _settingModalBottomSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Container(
          child: new Wrap(
            children: <Widget>[
              new ListTile(
                  leading: new Icon(Icons.account_circle_outlined),
                  title: new Text('Qui Suis-je ?'),
                  onTap: ()  async {
                  const url = 'https://www.notion.so/Kevin-Detournay-a57c73b6788a4fa3a48aa8cf116f76bb';
                    if (await canLaunch(url)) {
                      await launch(url, forceSafariVC: false);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                ),
              new ListTile(
                leading: new Icon(Icons.computer),
                title: new Text('Mon portfolio'),
                onTap: () async {
                  const url = 'https://kevindetournay.com/';
                    if (await canLaunch(url)) {
                      await launch(url, forceSafariVC: false);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
              ),
            ],
          ),
        );
      });
}
