import 'dart:math';

import 'package:flutter/material.dart';
import 'package:loginpage/login/provider/login_provider.dart';
import 'package:loginpage/utils/shared.dart';
import 'package:loginpage/utils/widget.dart';
import 'package:provider/provider.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController txtemail = TextEditingController();
  TextEditingController txtpass = TextEditingController();

  GlobalKey<FormState> key1=GlobalKey();
  LoginProvider? loginProviderf;
  LoginProvider? loginProvidert;

  @override
  Widget build(BuildContext context) {
    loginProviderf = Provider.of<LoginProvider>(context,listen: false);
    loginProvidert = Provider.of<LoginProvider>(context,listen: true);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Background1(),
            Padding(
              padding: const EdgeInsets.all(40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text("Sing Up",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 50)),
                  SizedBox(height: 60,),
                  Form(
                    key: key1,
                    child: TextFormField(
                      controller: txtemail,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black87)),
                        border: OutlineInputBorder(),
                        label: Text(
                          'Email',
                          style: TextStyle(color: Colors.black87),
                        ),
                      ),
                      validator: (value) {
                        if(value!.contains('@')&&value.contains('.'))
                          {
                            return null;
                          }
                        else
                          {
                            return 'enter a valid email';
                          }
                      }, 
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    obscureText: true,
                    controller: txtpass,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black87)),
                      border: OutlineInputBorder(),
                      label: Text(
                        'Password',
                        style: TextStyle(color: Colors.black87),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () async {
                          if(key1.currentState!.validate())
                            {
                              Shr shr=Shr();
                              loginProviderf!.mail.add(txtemail.text);
                              loginProviderf!.pass.add(txtpass.text);
                              shr.setshr(loginProviderf!.mail,loginProviderf!.pass);
                              List<String>? m1 = await shr.readshr();
                              loginProviderf!.mail=m1!;
                              List<String>? p1 = await shr.readpass();
                              loginProviderf!.mail=p1!;
                              Navigator.pop(context);
                            }
                        },
                        child: Container(
                          width: 150,
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
                          decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(25)),
                          child: Text("Sing Up", style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(top: 590,left: 25,child: InkWell(onTap: () {
              Navigator.pop(context);
            },child: Icon(Icons.arrow_circle_up,color: Colors.blue,size: 30))),
            Positioned(top: 560,right: 18,child: InkWell(onTap: () {
              Navigator.pop(context);
            },child: Icon(Icons.arrow_circle_up,color: Colors.blue,size: 30))),
            Positioned(top: 650,left: 130,child: InkWell(onTap: () {
            },child: Transform.rotate(angle: pi*pi/2+0.5,child: Container(height: 80,width: 250,child: Image.asset('assets/images/logopng.png',color: Colors.blue,fit: BoxFit.cover,))))),
          ],
        ),
      ),
    );
  }
}
