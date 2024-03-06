
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';


import '../../../repository/auth_repo/login_repo.dart';
import '../../../utils/utils.dart';
import '../user_preference/user_preference.dart';

class LoginViewModel extends GetxController {
  final _api = LoginRepositry();

  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  UserPreference _userPreference = UserPreference();
  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;
  RxBool loading = false.obs;

  void loginApi() {
    loading.value = true;
    Map data = {
      "email": emailController.value.text,
      "password": passwordController.value.text,
    };
    _api.loginApi(data).then((value) async {
      final tokenData =
          value["token"]["original"]; // Access the "original" field
      final userId = tokenData["user"]["id"].toString();
      final reffealCode = tokenData["user"]["refferal_code"].toString();
      final userName = tokenData["user"]["name"].toString();
      final accessToken = tokenData["access_token"].toString();
      final profileImage = value["user_profile_image"];
      final email = tokenData["user"]["email"].toString();
      final country = tokenData["user"]["country"].toString();
      final phoneNumber = tokenData["user"]["phone_number"].toString();
      final isEmailVerified = tokenData["user"]["email_verified_at"].toString();
      _userPreference. saveTokenId(
              "remToken",
              accessToken,
              "userid",
              userId,
              "name",
              userName,
              "profileimg",
              profileImage == null ? "" : profileImage,
              "phone",
              phoneNumber,
              "email",
              email,
              "RefCode",
              reffealCode,
              "country",
              country,
              "isEmailVerified",
              isEmailVerified)
          .then((value) {
        debugPrint("""
    Name: $userName
    UserId: $userId
    phone number: $phoneNumber
    email: $email
    profileImage: $profileImage
    Token: $accessToken
    country: $country
    ReffealCode: $reffealCode
  """);
        Get.delete<LoginViewModel>();

        if (isEmailVerified == "null") {
          // Get.offAll(EmailVerification());
        } else {
          // Get.offAll(MyBottomNavBar());
        }
      });

      loading.value = false;
      Utils.snackbar(value["message"]);
      final prefs = await SharedPreferences.getInstance();
      prefs.setBool("isLoggedIn", true);
    }).catchError((error) {
      loading.value = false;
      print(error);
      Utils.snackbar("Error: $error");
    });
  }
}