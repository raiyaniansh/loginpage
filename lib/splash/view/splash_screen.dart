import 'dart:async';

import 'package:flutter/material.dart';
import 'package:loginpage/utils/shared.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3),() async {
      Shr shr = Shr();
      bool? log= await shr.readfirstlogin();
      if(log==null)
        {
          shr.firstlogin1();
        }
      bool? login= await shr.readfirstlogin();
      (login==true)?Navigator.pushReplacementNamed(context, 'intro'):Navigator.pushReplacementNamed(context, 'login');
    },);
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: -200,
              left: -4,
              child: Container(
                width: 500,
                height: 500,
                decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
              ),
            ),
            Column(
              children: [
                SizedBox(height: 500,),
                Image.asset('assets/images/logopng.png',color: Colors.blue,),
                CircularProgressIndicator(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
