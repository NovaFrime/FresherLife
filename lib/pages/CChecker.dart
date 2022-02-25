import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'menu.dart';
class CChecker extends StatefulWidget {
  const CChecker({Key? key}) : super(key: key);

  @override
  _CCheckerState createState() => _CCheckerState();
}

class _CCheckerState extends State<CChecker> {
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
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) => Menu() ));
                }, icon:Icon(Icons.arrow_back_rounded,color:Colors.black,size:30))
            ,
            actions: <Widget>[
              Center(child: IconButton(onPressed: (){}, icon: Image.asset('assets/images/map.png')))
            ],
            title: Center(child: Text('Covid Self-Checker',style: TextStyle(color: Colors.black),)),

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30),
              ),
            ),
          ),
          body: Container(
            height: double.infinity,
            width: double.infinity,
            child: WebView(
              javascriptMode: JavascriptMode.unrestricted,
              initialUrl: 'https://novafrime.github.io/flcchecker/cchecker.html',
            ),
          ),
        ),
      ),
    );
  }
}