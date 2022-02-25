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
import 'menu.dart';
class Menu2 extends StatefulWidget {
  @override
  _Menu2State createState() => _Menu2State();
}

class _Menu2State extends State<Menu2> {
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
        color: Colors.lightBlue.shade500);
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade100,
      body: Stack(

        children: <Widget>[
          CircularParticle(height: screenHeight,
            width: screenWidth,
            isRandomColor:
            true,randColorList: [
            Colors.lightBlueAccent,
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
          Container(
            //
            // height: size.height * 0.25,
            decoration: BoxDecoration(
              image: DecorationImage(
                  alignment: Alignment.topCenter,
                  image: AssetImage('assets/images/top_header.png')),
            ),
          ),
          SafeArea(
            child: Padding(

              padding: EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 64,
                    margin: EdgeInsets.only(bottom: 105),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          width: 16,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 10,
                      primary: false,
                      crossAxisCount: 2,
                      children: <Widget>[
                        // Card(
                        //   shape:RoundedRectangleBorder(
                        //       borderRadius: BorderRadius.circular(8)
                        //   ),
                        //   elevation: 4,
                        //   child: Column(
                        //     mainAxisAlignment: MainAxisAlignment.center,
                        //     children: <Widget>[
                        //       SvgPicture.network(
                        //         'https://image.flaticon.com/icons/svg/1904/1904425.svg',
                        //         height: 128,
                        //       ),
                        //       Text(
                        //         'Personal Data',
                        //         style: cardTextStyle,
                        //       )
                        //     ],
                        //   ),
                        // ),

                        Card(
                          shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                          ),
                          elevation: 4,
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (_) => CMap() ));
                              // Function is executed on tap.
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.network(
                                  'https://i.postimg.cc/3NYHpFLm/download.png',
                                  height: 100,
                                ),
                                Text(
                                  'Covid Map',
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),

                        Card(
                          shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                          ),
                          elevation: 4,
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (_) => CChecker() ));
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.network(
                                  'http://www.publichealth.lacounty.gov/media/Coronavirus/images/icon-learn-COVID.png',
                                  height: 100,
                                ),
                                Text(
                                  'Covid Self-Checker',
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),

                        Card(
                          shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                          ),
                          elevation: 4,
                          child: InkWell(
                            onTap: () {
                           Navigator.of(context).push(MaterialPageRoute(builder: (_) => PillFind() ));
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.network(
                                  'https://image.flaticon.com/icons/png/512/2621/2621852.png',
                                  height: 100,
                                ),
                                Text(
                                  'Pill Identifier',
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),

                        Card(
                          shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                          ),
                          elevation: 4,
                          child: InkWell(
                            onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (_) => SChecker() ));},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.network(
                                  'https://cdn0.iconfinder.com/data/icons/medical-services-set-2-1/64/x-07-512.png',
                                  height: 100,
                                ),
                                Text(
                                  'Symptom Checker',
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),

                        // Card(
                        //   shape:RoundedRectangleBorder(
                        //       borderRadius: BorderRadius.circular(8)
                        //   ),
                        //   elevation: 4,
                        //   child: InkWell(
                        //     onTap: () {},
                        //     child: Column(
                        //       mainAxisAlignment: MainAxisAlignment.center,
                        //       children: <Widget>[
                        //         Image.network(
                        //           'https://www.fema.gov/sites/default/files/2020-07/illustration_hero_covid_rumor.png',
                        //           height: 128,
                        //         ),
                        //         Text(
                        //           'FAQ',
                        //           style: cardTextStyle,
                        //         )
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        // Card(
                        //   shape:RoundedRectangleBorder(
                        //       borderRadius: BorderRadius.circular(8)
                        //   ),
                        //   elevation: 4,
                        //   child: InkWell(
                        //     onTap: () {},
                        //     child: Column(
                        //       mainAxisAlignment: MainAxisAlignment.center,
                        //       children: <Widget>[
                        //         Image.network(
                        //           'https://icon-library.com/images/about-us-icon-png/about-us-icon-png-14.jpg',
                        //           height: 128,
                        //         ),
                        //         Text(
                        //           'About Us',
                        //           style: cardTextStyle,
                        //         )
                        //       ],
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
