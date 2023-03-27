import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier
{
  TextEditingController txtemail = TextEditingController();
  TextEditingController txtpass = TextEditingController();

  bool email=false;
  bool passw=false;

  List<String> mail=[];
  List<String> pass=[];

  void changeemail(String newemail,String pass)
  {
    txtemail = TextEditingController(text: newemail);
    txtpass = TextEditingController(text: pass);
    notifyListeners();
  }
}