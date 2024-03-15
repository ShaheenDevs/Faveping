import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FaveController extends GetxController {
  var currentIndex = RxInt(0);

  void updateIndex(int value) {
    currentIndex.value = value;
  }

  var follow = RxBool(true);

  void updateFollow(bool value) {
    follow.value = value;
    debugPrint(follow.value.toString());
  }

  
}
