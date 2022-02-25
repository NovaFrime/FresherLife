
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'menu.dart';
class SChecker extends StatefulWidget {
  const SChecker({Key? key}) : super(key: key);

  @override
  _SCheckerState createState() => _SCheckerState();
}

class _SCheckerState extends State<SChecker> {
  late WebViewController controller;
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
                onPressed: () async { if (await controller.canGoBack()) {controller.goBack();}
                }, icon:Icon(Icons.arrow_back_rounded,color:Colors.black,size:30))
            ,
            actions: <Widget>[
              Center(child: IconButton(onPressed: (){}, icon: Image.asset('assets/images/map.png')))
            ],
            title: Center(child: Text('Symptom Checker',style: TextStyle(color: Colors.black),)),

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
              initialUrl: 'https://novafrime.github.io/detectsymtom/index.html',
              onWebViewCreated: (controller) {this.controller = controller;},
            ),
          ),
        ),
      ),
    );
  }
}