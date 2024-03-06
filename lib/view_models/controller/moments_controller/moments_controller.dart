import 'package:flutter/material.dart';
import 'package:get/get.dart';



class MomentsController extends GetxController{
var currentIndex = RxInt(0);

  void updateIndex(int value) {
    currentIndex.value = value;
    debugPrint(currentIndex.value.toString());
  }
}