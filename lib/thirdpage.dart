import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('title'), backgroundColor: Colors.black),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/docs.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 4,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(50),
                      ),
                      color: Color.fromRGBO(240, 240, 240, 1)),
                  // color: Color.fromRGBO(240, 202, 125, 1)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          children: [
                            Container(
                              child: Image.asset(
                                'assets/images/stella.png',
                                scale: 6,
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(35, 0, 0, 0),
                                    child: Text(
                                      'Dr. Stella Kane',
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Color.fromRGBO(18, 21, 86, 1),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          35, 0, 0, 5),
                                      child: Text(
                                        'Heart Surgeon - Flowers Hospital',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color:
                                                Color.fromRGBO(18, 21, 86, 50),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Row(
                                      children: [
                                        //IcOns
                                        Image.asset(
                                          "assets/images/call.png",
                                          color: Colors.blue,
                                          scale: 25,
                                        ),
                                        SizedBox(
                                          width: 25,
                                        ),
                                        //Icons
                                        Image.asset(
                                          "assets/images/sms.png",
                                          color: Colors.amber,
                                          scale: 25,
                                        ),
                                        SizedBox(
                                          width: 25,
                                        ),
                                        //icons
                                        Image.asset(
                                          "assets/images/vc.png",
                                          color: Colors.red[400],
                                          scale: 20,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(35, 0, 0, 5),
                          child: Text(
                            'About Doctor',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Color.fromRGBO(18, 21, 86, 1),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Dr. Stella is the top most heart surgeon in Flower\nHospital. She has done over 100 successful sugeries\nwithin past 3 years. She has achieved several\nawards for her wonderful contribution in her own\nfield. She’s available for private consultation for\ngiven schedules.',
                          style: TextStyle(
                            height: 1.6,
                            color: Color.fromRGBO(18, 21, 86, 70),
                            // color: kTitleTextColor.withOpacity(0.7),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(35, 0, 0, 5),
                          child: Text(
                            'Upcoming Schedules',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Color.fromRGBO(18, 21, 86, 1),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                        child: InkWell(
                          onTap: () {},
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(220, 230, 250, 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: ListTile(
                                leading: Image.asset(
                                  'assets/images/12jan.png',
                                  color: Color.fromRGBO(62, 117, 248, 1),
                                ),
                                title: Text(
                                  'Consultation',
                                  style: TextStyle(
                                    color: Colors.indigo[900],
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: Text(
                                  'Sunday . 9am - 11am',
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
                        padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
                        child: InkWell(
                          onTap: () {},
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(230, 220, 235, 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: ListTile(
                                leading: Image.asset(
                                  'assets/images/13jan.png',
                                  color: Color.fromRGBO(250, 175, 104, 1),
                                ),
                                title: Text(
                                  'Consultation',
                                  style: TextStyle(
                                    color: Colors.indigo[900],
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: Text(
                                  'Moanday . 9am - 11am',
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
            ],
          )
        ],
      ),
    );
  }
}
