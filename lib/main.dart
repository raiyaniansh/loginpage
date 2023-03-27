import 'package:flutter/material.dart';
import 'package:loginpage/home/view/home_screen.dart';
import 'package:loginpage/intro/view/intro_screen.dart';
import 'package:loginpage/login/provider/login_provider.dart';
import 'package:loginpage/login/view/login_screen.dart';
import 'package:loginpage/singup/view/singup_screen.dart';
import 'package:loginpage/splash/view/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LoginProvider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => SplashScreen(),
          'intro':(context) => IntroScreen(),
          'login':(context) => LoginScreen(),
          'SignUp':(context) => SignUpScreen(),
          'Home':(context) => HomeScreen(),
        },
      ),
    ),
  );
}
