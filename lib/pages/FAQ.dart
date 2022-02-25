import 'package:particles_flutter/particles_flutter.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class FAQ extends StatefulWidget {
  const FAQ({Key? key}) : super(key: key);

  @override
  _FAQState createState() => _FAQState();
}
class _FAQState extends State<FAQ> {

  @override

  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Stack(

        children: <Widget>[
          CircularParticle(height: screenHeight, width: screenWidth, isRandomColor: true,randColorList: [
            Colors.white,
          ],
            maxParticleSize: 3,
            numberOfParticles: 50,
            awayAnimationCurve: Curves.easeInOutBack,


            connectDots: true,
            hoverColor: Colors.blue,

            speedOfParticles: 1,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(110, 50, 0, 0),
              child: Text(
                'About Me',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 28.0,
                  letterSpacing: 2.0,
                ),
              ),
            ),

          Padding(        padding: const EdgeInsets.fromLTRB(30.0, 100.0, 30.0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
            Center(
            child: CircleAvatar(
              radius: 40.0,
              backgroundImage: AssetImage('assets/images/avt.jpg'),
            ),
          ),
      Divider(
        color: Colors.white,
        height: 60.0,
      ),
      Text(
        'NAME',
        style: TextStyle(
          color: Colors.lightBlueAccent,
          fontSize: 18,
          letterSpacing: 2.0,
        ),
      ),
      SizedBox(height: 15.0),
      Text(
        'Lê Thành Danh',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 28.0,
          letterSpacing: 2.0,
        ),
      ),
      SizedBox(height: 10.0),
      Text(
        'HOMETOWN',
        style: TextStyle(
          color: Colors.lightBlueAccent,
          fontSize: 18,
          letterSpacing: 2.0,
        ),
      ),
      SizedBox(height: 15.0),
      Text(
        'HCMC, Vietnam',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 28.0,
          letterSpacing: 2.0,
        ),
      ),
      SizedBox(height: 10.0),
      Text(
        'CURRENT AGE',
        style: TextStyle(
          color: Colors.lightBlueAccent,
          fontSize: 18,
          letterSpacing: 2.0,
        ),
      ),
      SizedBox(height: 15.0),
      Text(
        '16',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 28.0,
          letterSpacing: 2.0,
        ),
      ),
      SizedBox(height: 10.0),
                Text(
                  'Contact Me',
                  style: TextStyle(
                    color: Colors.lightBlueAccent,

                    fontSize: 18.0,
                    letterSpacing: 2.0,
                  ),
                ),
      SizedBox(height: 15.0),
      Row(
          children: <Widget>[
            Icon(
              Icons.email,
              color: Colors.redAccent[100],
              size: 28,
            ),
            SizedBox(width: 1.0),
            Text(
              'holyprime1985@gmail.com',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                letterSpacing: 1.0,
              ),)


                  ]
              ),
                Divider(
                  color: Colors.white,
                  height: 60.0,
                ),
      ],
    ),

            ),


        ],

      ),


    );
  }
}

//Handle button tap

