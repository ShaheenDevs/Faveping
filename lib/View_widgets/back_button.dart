import 'package:faveping/res/commons/AppColors/AppColor.dart';
import 'package:flutter/material.dart';


Widget backButon(context) {
  return IconButton(
    onPressed: () {
      Navigator.pop(context);
    },
    icon: const Icon(
      Icons.arrow_back_ios,
      color: AppColors.primaryPink2,
    ),
  );
}