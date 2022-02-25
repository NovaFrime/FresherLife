import 'package:flutter/material.dart';
import 'package:fresher_life_beta/const/color.dart';
import 'package:fresher_life_beta/pages/tutorial.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}
Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => OnboardingPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(10, 10);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: Curves.ease));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        // decoration: BoxDecoration(
        //   gradient: LinearGradient(colors: [
        //     AppColors.mainColor,
        //     AppColors.mainColor.withOpacity(.4),
        //   ],
        //   begin: Alignment.topCenter,
        //     end: Alignment.bottomCenter,
        //     //gradient background
        //   )
        // ),
        body: Stack(

          children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 70),
          child: Align(
            alignment: Alignment.topCenter,
             child: Image.asset("assets/images/sign_fl.png"),

          ),
        ),
        // Padding(
        //   padding: const EdgeInsets.fromLTRB(100, 250, 100, 20),
        //   child: Image.asset("assets/images/pills_1.png"),
        // ),
            //pill image

        Positioned(
          bottom: 60,
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text("Pill Identifier And",style: TextStyle(
                  fontSize: 26,
                  color: Colors.blueAccent,
                  height: 1,
                  fontWeight: FontWeight.bold,
                ),),
                Text("Symtomp Checker",style: TextStyle(
                  fontSize: 23,
                  color: Colors.blueAccent,
                  height: 1,
                  fontWeight: FontWeight.bold,)
                ),
                Text("Healthcare App",style: TextStyle(
                  fontSize: 22,
                  color: Colors.blueAccent[700],
                  height: 1.5,
                  fontFamily: "ubuntu",
                  fontWeight: FontWeight.bold,)
                ),
                Text("Covid Support Included",style: TextStyle(
                  fontSize: 18,
                  color: Colors.blueAccent[700],
                  height: 1.5,
                  fontFamily: "ubuntu",
                  fontWeight: FontWeight.bold,)
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(_createRoute());
                  },

                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                          Radius.circular(40)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white24,
                              offset: Offset(1,1),
                              spreadRadius: 1,
                              blurRadius: 3,
                          )
                        ],
                        gradient: LinearGradient(colors: [
                          AppColors.mainColor,
                          Colors.cyanAccent,
                        ],
                    ),
                    ),
                    width: MediaQuery.of(context).size.width * .7,
                    height: 50,
                    child: Center(
                    child: Text("Get Started",
                      style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),),)
                  ),
                )
              ],
            ),
          ),
        )
       ],
      ),
    ),
   );
  }
}
