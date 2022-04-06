import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'menu.dart';
class CMap extends StatefulWidget {
  const CMap({Key? key}) : super(key: key);

  @override
  _CMapState createState() => _CMapState();
}

class _CMapState extends State<CMap> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading:
              IconButton(
                tooltip: 'Back to Menu',
                  onPressed: (){
                    // Navigator.of(context).push(MaterialPageRoute(builder: (_) => PillFind() ));
                    Navigator.push(context,PageRouteBuilder(
                        transitionDuration: Duration(seconds: 1),
                        transitionsBuilder: (context,animation,animationTime,child) {
                          animation= CurvedAnimation(parent: animation, curve: Curves.elasticInOut);
                          return ScaleTransition(
                            alignment: Alignment.center,
                            scale: animation,
                            child: child,
                          );
                        },
                        pageBuilder: (context,animation,animationTime) {
                          return Menu();}
                    ));
                  }, icon:Icon(Icons.arrow_back_rounded,color:Colors.black,size:30))
          ,
            actions: <Widget>[
              Center(child: IconButton(onPressed: (){}, icon: Image.asset('assets/images/icon_1.png')))
            ],
          title: Center(child: Text('Covid Map',style: TextStyle(color: Colors.black),)),

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30),
              ),
            ),
          ),
          body: SafeArea(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              child: WebView(
                javascriptMode: JavascriptMode.unrestricted,
                initialUrl: 'https://covid19-livestats-map.netlify.app/',
              ),
            ),
          ),
        ),
      ),
    );
  }
}