import 'package:flutter/material.dart';
import 'package:loginpage/utils/shared.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: Stack(
          children: [
            Positioned(top: 50,child: Container(height: 180,child: Image.asset('assets/images/logopng.png',color: Colors.white,))),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.only(left: 20,right: 20,top: 30),
                height: 550,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50))
                ),
                child: Column(
                  children: [
                    Text("Welcome",style: TextStyle(color: Colors.blue,fontSize: 35,fontWeight: FontWeight.bold),),
                    SizedBox(height: 150,),
                    ElevatedButton(onPressed: () {
                      Shr shr=Shr();
                      shr.remove();
                      Navigator.pushReplacementNamed(context, '/');
                    }, child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text('Logout',style: TextStyle(fontSize: 20),),
                    )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
