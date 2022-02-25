import 'dart:math';

import 'package:flutter/material.dart';
import 'data_model.dart';
import 'PillFind.dart';
import 'package:url_launcher/url_launcher.dart';
class PillDetailsPage extends StatelessWidget {

  final Pill pill;

  PillDetailsPage({required this.pill});


  void customLaunch(command) async{
    if(await canLaunch(command)){
      await launch(command);
    }else{
      print('Error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading:
        IconButton(
            tooltip: 'Back to Menu',
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (_) => PillFind() ));
            }, icon:Icon(Icons.arrow_back_rounded,color:Colors.black,size:30))
        ,
        actions: <Widget>[
          Center(child: IconButton(onPressed: (){}, icon: Image.asset('assets/images/map.png')))
        ],
        title: Center(child: Text('${pill.name}',style: TextStyle(color: Colors.black),)),

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 16.0,
            ),
            Center(
              child: Hero(
                tag: pill.id,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(pill.hinhurl),
                  radius: 100.0,
                ),
              ),
            ),
            SizedBox(
              height: 22.0,
            ),
            Text(
              '${pill.name}',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 12.0,
            ),
            Text(
              '${pill.nhomthuoc}',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 12.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '${pill.donggoi}',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w300,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
            SizedBox(
              height: 12.0,
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
                  child: Text(
                    '${pill.thanhphan}. '
                    '${pill.chidinh}. '
                    '${pill.chongchidinh}. '
                        '${pill.cachdung}. '
                        '${pill.tuongtacthuoc}. '
                        '${pill.tacdungphu}. '
                        '${pill.chuy}. '
                    ,

                  //   String? chidinh =""; //co the khong co
                  // String? chongchidinh =""; //co the khong co
                  // String? cachdung =""; //co the khong co
                  // String? tuongtacthuoc ="";//co the khong co
                  // String? tacdungphu ="";//co the khong co
                  // String? chuy ="";
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
