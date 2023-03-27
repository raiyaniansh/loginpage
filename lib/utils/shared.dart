import 'package:shared_preferences/shared_preferences.dart';

class Shr
{
  bool islogin = false;
  bool loginfirst = true;

  Future<void> firstlogin()
  async {
    SharedPreferences shr = await SharedPreferences.getInstance();
    loginfirst=false;
    shr.setBool('fl', loginfirst);
  }

  Future<void> firstlogin1()
  async {
    SharedPreferences shr = await SharedPreferences.getInstance();
    loginfirst=true;
    shr.setBool('fl', loginfirst);
  }

  Future<bool?> readfirstlogin()
  async {
    SharedPreferences shr = await SharedPreferences.getInstance();
    bool? login =await shr.getBool('fl');
    return login;
  }

  Future<List<String>?> readpass()
  async {
    SharedPreferences shr = await SharedPreferences.getInstance();
    List<String>? pass= await shr.getStringList('p1');
    return pass;
  }

  Future<List<String>?> readshr()
  async {
    SharedPreferences shr = await SharedPreferences.getInstance();
    List<String>? email= await shr.getStringList('e1');
    return email;
  }

  Future<void> setlogin()
  async {
    SharedPreferences shr = await SharedPreferences.getInstance();
    islogin=true;
    shr.setBool('l1', islogin);
  }

  Future<bool?> readlogin()
  async {
    SharedPreferences shr = await SharedPreferences.getInstance();
    bool? onlogin= await shr.getBool('l1');
    return onlogin;
  }

  Future<void> remove()
  async {
    SharedPreferences shr = await SharedPreferences.getInstance();
    shr.remove('l1');
  }

  Future<void> delete()
  async {
    SharedPreferences shr = await SharedPreferences.getInstance();
    shr.remove('e1');
    shr.remove('p1');
  }

  Future<void> setshr(List<String> mail,List<String> pass)
  async {
    SharedPreferences shr = await SharedPreferences.getInstance();
    shr.setStringList('e1', mail);
    shr.setStringList('p1', pass);
  }
}