import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class BottomNavController extends GetxController {
  var currentIndex = RxInt(0);
  var versiondata = {}.obs;
  var version = RxInt(0);

  void updateIndex(int value) {
    currentIndex.value = value;
    debugPrint(currentIndex.value.toString());
  }

  Future<void> getversion() async {
    final response =
        await http.get(Uri.parse("https://earnflow.live/api/app-version"));
    if (response.statusCode == 200) {
      var versionbody = jsonDecode(response.body.toString());
      versiondata.value = jsonDecode(response.body.toString());
      version.value =
          int.parse(versionbody["app_version"][0]["version"].toString());

      debugPrint("====version ==== version ${version.value}");
    } else {}
  }



  // var isactivedata = {}.obs;
  // var isactive = RxString("1");

  // Future<void> getSuspendData() async {
  //   final String? id;

  //   final prefs = await SharedPreferences.getInstance();
  //   final String? token;
  //   id = prefs.getString('userid');
  //   token = prefs.getString('remToken');

  //   final response = await http.get(
  //       Uri.parse("https://earnflow.live/api/auth/is-active"),
  //       headers: {'Authorization': 'Bearer $token'});

  //   if (response.statusCode == 200) {
  //     var isActiveBody = jsonDecode(response.body.toString());
  //     isactivedata.value = jsonDecode(response.body.toString());
  //     isactive.value = isActiveBody["is_active"];
  //     debugPrint("account active status code: ${isactive.value}");
  //   } else {
  //     debugPrint("====Account suspend not working");
  //   }
  // }
}