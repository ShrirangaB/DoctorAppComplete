import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  bool showvalue = true;
  SharedPreferences logindata;
  bool newuser;
  @override
  void initState() {
    super.initState();
    ifLogin();
  }

  void ifLogin() async {
    logindata = await SharedPreferences.getInstance();
    newuser = (logindata.getBool('login') ?? true);
    print(newuser);
    if (newuser == false) {
      // Navigator.pushReplacement(
      //     context, MaterialPageRoute(builder: (context) => HomePageDoctor()));
    }
  }

  @override
  void dispose() {
    nameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: ClipPath(
                clipper: WaveClipperTwo(flip: false, reverse: true),
                child: Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width,
                  color: Color.fromRGBO(70, 123, 250, 100),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: ClipPath(
                clipper: WaveClipperTwo(flip: false),
                child: Container(
                    height: 200, color: Color.fromRGBO(70, 123, 250, 1)),
              ),
            ),
            Positioned(
              child: Column(
                children: [
                  Text(
                    'Lets Get Started',
                    style: TextStyle(
                      color: Color.fromRGBO(70, 123, 250, 1),
                      fontSize: 25,
                    ),
                  ),
                  TextField(
                    controller: nameController,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.black)),
                      hintText: 'username',
                    ),
                  ),
                  //  : Text('You are logged in as $name'),
                  TextField(
                    textAlign: TextAlign.center,
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(5),
                      border: OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.black)),
                      hintText: "********",
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Checkbox(
                        value: this.showvalue,
                        onChanged: (bool value) {
                          setState(() {
                            this.showvalue = value;
                          });
                        },
                      ),
                      Text('remember'),
                    ],
                  ),
                  MaterialButton(
                    minWidth: 350,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side:
                            BorderSide(color: Color.fromRGBO(70, 123, 250, 1))),
                    textColor: Colors.white,
                    color: Color.fromRGBO(70, 123, 250, 1),
                    padding: const EdgeInsets.all(8.0),
                    child: new Text(
                      "Login",
                    ),
                    onPressed: () {
                      // String username = nameController.text;
                      // String password = passwordController.text;
                      // if (username != '' && password != '') {
                      //   print('Successfull');
                      //   logindata.setBool('login', false);
                      //   logindata.setString('username', username);
                      //   logindata.setString('password', password);
                      //   Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //           builder: (context) => HomePageDoctor()));
                      // }
                    },
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(color: Color.fromRGBO(70, 123, 250, 1)),
                    ),
                  ),
                  MaterialButton(
                    minWidth: 350,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(color: Colors.black54)),
                    textColor: Colors.white,
                    color: Colors.black54,
                    padding: const EdgeInsets.all(8.0),
                    child: new Text(
                      "Sign Up",
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('or'),
                  SizedBox(
                    height: 20,
                  ),
                  FloatingActionButton(
                    child: Text(
                      'f',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    backgroundColor: Color.fromRGBO(70, 123, 250, 1),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
