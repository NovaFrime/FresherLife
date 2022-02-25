import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'CChecker.dart';
import 'CMap.dart';
import 'SChecker.dart';
import 'loading.dart';
import 'PillFind.dart';
import 'package:particles_flutter/particles_flutter.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'FAQ.dart';
import 'setting.dart';
import 'menu2.dart';
class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}
class _MenuState extends State<Menu> {
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  final screen = [
    FAQ(),
    Menu2(),
    settingpage(),
  ];
  static final color1=Colors.lightBlue.shade100;
  static final color2=Colors.grey;
  //final bg_color;
  int _page=1;
  @override
  Widget build(BuildContext context) {
    // to get size
    var size = MediaQuery.of(context).size;
      double screenHeight = MediaQuery.of(context).size.height;
      double screenWidth = MediaQuery.of(context).size.width;
    // style


    var cardTextStyle = TextStyle(
        fontFamily: "st",
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: Colors.lightBlue);
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade100,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: _page == 1 ? color1 : color2,
        index: _page,
        key: _bottomNavigationKey,
        items: <Widget>[
        Icon(Icons.question_answer_outlined, size: 30),
        Icon(Icons.list, size: 30),

    ],
        animationDuration: Duration(milliseconds: 200),
        animationCurve: Curves.bounceInOut,
        height: 55,
      onTap: (index) {

          setState(() {
          _page = index;
          });
    //Handle button tap
    },
    ),


      body: screen[_page]

    );
  }
}
