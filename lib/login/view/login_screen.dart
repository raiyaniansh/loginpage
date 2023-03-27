import 'dart:math';

import 'package:flutter/material.dart';
import 'package:loginpage/login/provider/login_provider.dart';
import 'package:loginpage/utils/shared.dart';
import 'package:loginpage/utils/widget.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LoginProvider? loginProviderf;
  LoginProvider? loginProvidert;
  TextEditingController txtpass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    loginProviderf = Provider.of<LoginProvider>(context, listen: false);
    loginProvidert = Provider.of<LoginProvider>(context, listen: true);
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
                  Text("Sing In",
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 50)),
                  SizedBox(
                    height: 60,
                  ),
                  TextField(
                    controller: loginProvidert!.txtemail,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black87)),
                      border: OutlineInputBorder(),
                      label: Text(
                        'Email',
                        style: TextStyle(color: Colors.black87),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: loginProviderf!.txtpass,
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
                          Shr shr = Shr();
                          List? m1 = await shr.readshr();
                          List? p1 = await shr.readpass();
                          for (int i = 0;
                              i < loginProviderf!.mail.length;
                              i++) {
                            if (loginProvidert!.txtemail.text == m1![i]) {
                              loginProviderf!.email = true;
                              if (loginProviderf!.txtpass.text == p1![i]) {
                                Navigator.pushReplacementNamed(context, 'Home');
                                shr.setlogin();
                                loginProviderf!.passw = true;
                                loginProviderf!.email = true;
                                break;
                              } else {
                                loginProviderf!.passw = false;
                              }
                            } else {
                              loginProviderf!.email = false;
                            }
                          }
                          if (loginProviderf!.email == false) {
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Enter valid email')));
                          } else if(loginProviderf!.passw==false) {
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Enter valid pass...')));
                          }
                        },
                        child: Container(
                          width: 150,
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(
                              left: 20, right: 20, top: 10, bottom: 10),
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(25)),
                          child: Text("Sing In",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
                top: 590,
                left: 25,
                child: InkWell(
                    onTap: () async {
                      Shr shr = Shr();
                      List<String>? m1 = await shr.readshr();
                      loginProviderf!.mail = m1!;
                      List<String>? p1 = await shr.readpass();
                      loginProviderf!.pass = p1!;
                      showModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (context) {
                          return Container(
                            height: 250,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(35),
                                topLeft: Radius.circular(35),
                              ),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 50,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(35),
                                      topLeft: Radius.circular(35),
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text('Accounts',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold)),
                                ),
                                Container(
                                    height: 200,
                                    width: double.infinity,
                                    color: Colors.white,
                                    padding: EdgeInsets.all(10),
                                    child: (m1 == null)
                                        ? Container()
                                        : ListView.builder(
                                            itemCount: m1.length,
                                            itemBuilder: (context, index) =>
                                                InkWell(
                                                    onTap: () {
                                                      loginProviderf!
                                                          .changeemail(
                                                              '${m1[index]}',
                                                              '${p1[index]}');
                                                      Navigator.pop(context);
                                                    },
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text('${m1[index]}',
                                                            style: TextStyle(
                                                                fontSize: 20)),
                                                        InkWell(
                                                            onTap: () {
                                                              loginProviderf!
                                                                  .mail
                                                                  .removeAt(
                                                                      index);
                                                              loginProviderf!
                                                                  .pass
                                                                  .removeAt(
                                                                      index);
                                                              m1.remove(index);
                                                              p1.remove(index);
                                                              shr.setshr(
                                                                  m1, p1);
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                            child: Text(
                                                              "Remove",
                                                              style: TextStyle(
                                                                color:
                                                                    Colors.red,
                                                              ),
                                                            ))
                                                      ],
                                                    )),
                                          )),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: Icon(Icons.person, color: Colors.blue, size: 30))),
            Positioned(
                top: 560,
                right: 18,
                child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'SignUp');
                    },
                    child: Icon(Icons.arrow_circle_up,
                        color: Colors.blue, size: 30))),
            Positioned(
              top: 650,
              left: 130,
              child: InkWell(
                onTap: () {},
                child: Transform.rotate(
                  angle: pi * pi / 2 + 0.5,
                  child: Container(
                    height: 80,
                    width: 250,
                    child: Image.asset(
                      'assets/images/logopng.png',
                      color: Colors.blue,
                      fit: BoxFit.cover,
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
