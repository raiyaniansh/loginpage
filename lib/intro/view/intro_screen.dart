import 'package:flutter/material.dart';
import 'package:loginpage/utils/shared.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    checkintro();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: Column(
          children: [
            Container(
              height: 725,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(bottomRight: Radius.circular(25),bottomLeft: Radius.circular(25))),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    SizedBox(height: 150,),
                    Image.asset('assets/images/logopng.png',color: Colors.blue,),
                    SizedBox(height: 50,),
                    Text("Welcome",style: TextStyle(color: Colors.black,fontSize: 35,fontWeight: FontWeight.bold),),
                    SizedBox(height: 25,),
                    Text("Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ",textAlign: TextAlign.center,style: TextStyle(fontSize: 20),)
                  ],
                ),
              ),
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(onPressed: () {
                  Shr shr = Shr();
                  shr.firstlogin();
                  Navigator.pushReplacementNamed(context, 'login');
                }, child: Text('Skip',style: TextStyle(color: Colors.white,fontSize: 20),)),
                TextButton(onPressed: () {
                  Shr shr = Shr();
                  shr.firstlogin();
                  Navigator.pushReplacementNamed(context, 'login');
                }, child: Text('Next',style: TextStyle(color: Colors.white,fontSize: 20),))
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> checkintro()
  async {
    // Shr shr = Shr();
    // bool? log= await shr.readfirstlogin();
    // (log==false)?Navigator.pushReplacementNamed(context, 'intro'):Navigator.pushReplacementNamed(context, 'login');
  }
}
