import 'package:Doctors_App/homePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Color.fromRGBO(217, 224, 241, 1)),
          ),
          Padding(
            padding: const EdgeInsets.all(70),
            child: Align(
              alignment: Alignment.topCenter,
              child: Image.network(
                "https://lh3.googleusercontent.com/proxy/MCoairY9VH66q-WsOJ9s_jVziG22ESzi2dmS4IU1cs-tbPf-eHfNuv6tMNZP82XGImDXj59u-qs7PTT58ITDG0IvFVjsmDF3teGbNihO",
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2.8,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  'Skycliff IT is passionately built to excel in Quality, Value and Time driven Techno Commercial world. Our Customer First Approach with a Systemic view and Holistic approach makes Skycliff IT, a value-based, vision driven, mission-focused organization. Skycliff IT provides end-to-end solutions in Application Development and Maintenances, Product development and Consulting Services.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 1.45,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(75, 5, 50, 75),
              child: Column(
                children: [
                  Row(
                    children: [
                      FlatButton(
                          onPressed: _callLauncher,
                          child: Text(
                            'Call Us',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                            ),
                          )),
                      FlatButton(
                          onPressed: _textLauncher,
                          child: Text(
                            'Text Us',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                            ),
                          )),
                    ],
                  ),
                  Row(
                    children: [
                      FlatButton(
                          onPressed: _launchWebsite,
                          child: Text(
                            'Website',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                            ),
                          )),
                      FlatButton(
                          onPressed: _emailLauncher,
                          child: Text(
                            'E-mail Us',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                            ),
                          )),
                    ],
                  ),
                  FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomePageDoctor()),
                        );
                      },
                      child: Text(
                        'Back',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 8,
                        ),
                      )),
                ],
              ),
            ),
          ),
          Positioned(
              top: MediaQuery.of(context).size.height / 3.4,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  "Skycliff IT",
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              )),
        ],
      ),
    );
  }
}

_launchWebsite() async {
  const url = 'http://www.skycliffit.com/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Couldnt launch $url';
  }
}

_textLauncher() async {
  const uri = "sms:1234567890," + "sms:0123456785";
  if (await canLaunch(uri)) {
    await launch(uri);
  } else {
    throw 'Couldnt launch $uri';
  }
}

_callLauncher() async {
  const uri = 'tel:1234567890';
  if (await canLaunch(uri)) {
    await launch(uri);
  } else {
    throw 'Couldnt launch $uri';
  }
}

_emailLauncher() async {
  const uri = 'mailto:abcd@test.com?body=Hi';
  if (await canLaunch(uri)) {
    await launch(uri);
  } else {
    throw 'Couldnt launch $uri';
  }
}
