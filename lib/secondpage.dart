import 'package:Doctors_App/thirdpage.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(249, 249, 249, 1),
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 25),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/ham.png',
                      scale: 20,
                    ),
                    Image.asset(
                      'assets/images/stella.png',
                      scale: 15,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              //
              // Title
              //
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Find Your Desired\nDoctor',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    color: Colors.indigo[900],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              //
              // Search bar
              //
              Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 6, 10, 10),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(242, 243, 242, 1),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search for doctors',
                        ),
                      ),
                    ),
                  ),

                  //
                  // Search button
                  //
                  Align(
                    alignment: Alignment.centerRight,
                    child: RaisedButton(
                      onPressed: () {},
                      color: Color.fromRGBO(246, 133, 119, 1),
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 15,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Icon(Icons.search_rounded),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Categories',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo[900],
                    fontSize: 18,
                  ),
                ),
              ),

              //
              // Category Cards
              //
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Container(
                        width: 130,
                        height: 160,
                        child: Stack(
                          children: <Widget>[
                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Container(
                                width: 110,
                                height: 137,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 16,
                                ),
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    'Dental\nSurgeon',
                                    style: TextStyle(
                                      color: Colors.indigo[900],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              right: 0,
                              child: Container(
                                height: 84,
                                width: 84,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(75, 127, 252, 1),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Image.asset(
                                  "assets/images/icon.png",
                                  scale: 10.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 130,
                        height: 160,
                        child: Stack(
                          children: <Widget>[
                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Container(
                                width: 110,
                                height: 137,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 16,
                                ),
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    'Heart\nSurgeon',
                                    style: TextStyle(
                                      color: Colors.indigo[900],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              right: 0,
                              child: Container(
                                height: 84,
                                width: 84,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(255, 177, 102, 1),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Image.asset(
                                  "assets/images/heart.png",
                                  scale: 6.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 130,
                        height: 160,
                        child: Stack(
                          children: <Widget>[
                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Container(
                                width: 110,
                                height: 137,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 16,
                                ),
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    'Eye\nSpecialist',
                                    style: TextStyle(
                                      color: Colors.indigo[900],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              right: 0,
                              child: Container(
                                height: 84,
                                width: 84,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(246, 126, 113, 1),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Image.asset(
                                  "assets/images/eye.png",
                                  scale: 6.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 130,
                        height: 160,
                        child: Stack(
                          children: <Widget>[
                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Container(
                                width: 110,
                                height: 137,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 16,
                                ),
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    'Heart\nSurgeon',
                                    style: TextStyle(
                                      color: Colors.indigo[900],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              right: 0,
                              child: Container(
                                height: 84,
                                width: 84,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Image.network(""),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 130,
                        height: 160,
                        child: Stack(
                          children: <Widget>[
                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Container(
                                width: 110,
                                height: 137,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 16,
                                ),
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    'Heart\nSurgeon',
                                    style: TextStyle(
                                      color: Colors.indigo[900],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              right: 0,
                              child: Container(
                                height: 84,
                                width: 84,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Top Doctors',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo[900],
                    fontSize: 18,
                  ),
                ),
              ),

              //
              // Doctors List
              //
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ThirdPage(),
                      ),
                    );
                  },
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(238, 241, 250, 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: ListTile(
                        leading: Image.asset('assets/images/stella.png'),
                        title: Text(
                          'Dr. Stella Kane',
                          style: TextStyle(
                            color: Colors.indigo[900],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          'Heart Surgeon - Flowers Hospital',
                          style: TextStyle(
                            color: Colors.indigo[900].withOpacity(0.7),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 1, 15, 1),
                child: InkWell(
                  onTap: () {},
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(249, 237, 235, 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: ListTile(
                        leading: Image.asset('assets/images/surgeon.png'),
                        title: Text(
                          'Dr. Joseph Kart',
                          style: TextStyle(
                            color: Colors.indigo[900],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          'Dental Surgeon - Flowers Hospital',
                          style: TextStyle(
                            color: Colors.indigo[900].withOpacity(0.7),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 1, 15, 1),
                child: InkWell(
                  onTap: () {},
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.amber[100],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: ListTile(
                        leading: Image.asset('assets/images/surgeon.png'),
                        title: Text(
                          'Dr. Joseph Kart',
                          style: TextStyle(
                            color: Colors.indigo[900],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          'Dental Surgeon - Flowers Hospital',
                          style: TextStyle(
                            color: Colors.indigo[900].withOpacity(0.7),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 1, 15, 1),
                child: InkWell(
                  onTap: () {},
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(173, 196, 248, 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: ListTile(
                        leading: Image.asset('assets/images/surgeon.png'),
                        title: Text(
                          'Dr. Joseph Kart',
                          style: TextStyle(
                            color: Colors.indigo[900],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          'Dental Surgeon - Flowers Hospital',
                          style: TextStyle(
                            color: Colors.indigo[900].withOpacity(0.7),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
