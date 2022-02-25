import 'menu.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'menu.dart';
import 'FAQ.dart';
import 'package:particles_flutter/particles_flutter.dart';

class settingpage extends StatefulWidget {
  const settingpage({Key? key}) : super(key: key);

  @override
  _settingpageState createState() => _settingpageState();
}
class _settingpageState extends State<settingpage> {

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
            Colors.red,
          ],
            maxParticleSize: 3,
            numberOfParticles: 100,
            awayAnimationCurve: Curves.easeInOutBack,
            enableHover: true,
            connectDots: true,
            hoverColor: Colors.blue,
            hoverRadius: 90,
            speedOfParticles: 1,
          ),
          // CircularParticle(height: screenHeight, width: screenWidth, isRandomColor: true,randColorList: [
          //   Colors.lightBlueAccent,
          // ],
          //   maxParticleSize: 3,
          //   numberOfParticles: 100,
          //   awayAnimationCurve: Curves.easeInOutBack,
          //   enableHover: true,
          //   connectDots: true,
          //   hoverColor: Colors.blue,
          //   hoverRadius: 90,
          //   speedOfParticles: 1,
          // ),
          Container(

            height: size.height * 0.25,
            decoration: BoxDecoration(
              image: DecorationImage(
                  alignment: Alignment.topCenter,
                  image: AssetImage('assets/images/top_header.png')),
            ),
          ),



        ],
      ),
    );
  }
}

//Handle button tap
