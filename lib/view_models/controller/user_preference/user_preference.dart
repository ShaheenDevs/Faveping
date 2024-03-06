

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../models/login/login.dart';


class UserPreference {
  Future<bool> saveUser(Login_resone_model login_resone_model)async{

    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString("token", login_resone_model.accessToken.toString());
    return true;
  }

    Future<Login_resone_model> getUser()async{

    SharedPreferences sp = await SharedPreferences.getInstance();
    String? token = sp.getString("token");
    return Login_resone_model(
      accessToken: token
    );
  }



  Future<bool> removeUser()async{

    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.clear();
    return true;
  }

Future<void> saveTokenId(
  String key,
  String value,
  key2,
  value2,
  key3,
  value3,
  key4,
  value4,
  key5,
  value5,
  key6,value6 ,key7,value7
  ,country,value8, isEmailVerified, value9
) async {
  final prefs = await SharedPreferences.getInstance();
  prefs.setString(key, value);
  prefs.setString(key2, value2);
  prefs.setString(key3, value3);
  prefs.setString(key4, value4);
  prefs.setString(key5, value5);
  prefs.setString(key6, value6);
  prefs.setString(key7, value7);
  prefs.setString(country, value8);
  prefs.setString(isEmailVerified, value9);
}


Future<void> updateProfile(
  String key,
  String value,
  key2,
  value2,

) async {
  final prefs = await SharedPreferences.getInstance();
  prefs.setString(key, value);
  prefs.setString(key2, value2);
 
}


Future<void> updateProfileImage(
  String key,
  String value,
 

) async {
  final prefs = await SharedPreferences.getInstance();
  prefs.setString(key, value);

 
}
}