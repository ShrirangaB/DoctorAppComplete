import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.network(
                "https://images.unsplash.com/photo-1557683304-673a23048d34?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8NXx8fGVufDB8fHw%3D&w=1000&q=80"),
          ),
          Padding(
            padding: const EdgeInsets.all(35),
            child: Align(
              alignment: Alignment.topCenter,
              child: Image.network(
                "https://thepalmergroup.com/wp-content/uploads/2019/02/Healthcare-Logo-Vector.png",
                color: Colors.white,
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
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vel tortor nunc. Phasellus in venenatis sapien.Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed venenatis sed lorem vel hendrerit.',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 1.62,
            child: Row(
              children: [
                FlatButton(
                    onPressed: () {},
                    child: Text(
                      'Call Us',
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    )),
                SizedBox(
                  width: 100,
                ),
                FlatButton(
                    onPressed: () {},
                    child: Text(
                      'Text Us',
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    )),
              ],
            ),
          ),
          Positioned(
              top: MediaQuery.of(context).size.height / 3.4,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  "DoctorsApp",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              )),
        ],
      ),
    );
  }
}
