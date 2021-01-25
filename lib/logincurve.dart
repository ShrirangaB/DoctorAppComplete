import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
              child: Column(children: <Widget>[
            ClipPath(
              clipper: WaveClipperTwo(flip: false),
              child: Container(
                height: 250,
                color: Colors.deepOrange[600],
              ),
            ),
            Padding(
                padding: EdgeInsets.all(30.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Email or Phone number",
                                  hintStyle:
                                      TextStyle(color: Colors.grey[500])),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Password",
                                  hintStyle:
                                      TextStyle(color: Colors.grey[500])),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.deepOrange[600]),
                      child: Center(
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        child: Row(
                      children: <Widget>[
                        Text('Does not have account?'),
                        FlatButton(
                          textColor: Colors.orange[300],
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          onPressed: () {
                            //signup screen
                          },
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ))
                  ],
                )),
            ClipPath(
              clipper: WaveClipperTwo(flip: false, reverse: true),
              child: Container(
                height: 100,
                color: Colors.deepOrange[600],
              ),
            ),
          ])),
        ));
  }
}
