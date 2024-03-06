
import 'package:faveping/res/commons/AppColors/AppColor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';


class Utils {
  static void fieldFocusChange(
      BuildContext context, FocusNode current, FocusNode nextFocus) {
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  static snackbar(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: AppColors.primaryPink2,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  static shimmerCustom(double w, double h) {
    return Container(
      child: Shimmer.fromColors(
        baseColor: Color.fromARGB(255, 241, 241, 241),
        highlightColor: Color(0xffFFF4FF),
        child: Container(
          padding: const EdgeInsets.all(4.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: h,
              width: w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
            ),
          ),
        ),
      ),
    );
  }

  static alertDialogLogout(context, func) {
    showCupertinoDialog(
      context: context,
      builder: (_) => CupertinoTheme(
        data: CupertinoThemeData(
          brightness: Brightness.dark, // Adjust brightness as needed
          primaryColor: CupertinoColors.black, // Background color
        ),
        child: CupertinoAlertDialog(
          title: Text(
            'logout'.tr,
            style: TextStyle(color: CupertinoColors.white),
          ),
          content: Text(
            'are_you_confirm_logout'.tr,
            style: TextStyle(color: CupertinoColors.white),
          ),
          actions: <Widget>[
            CupertinoDialogAction(
              child: Text(
                'cancel'.tr,
                style: TextStyle(color: CupertinoColors.white),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            CupertinoDialogAction(
              child: Text(
                'confirm'.tr,
                style: TextStyle(color: CupertinoColors.white),
              ),
              onPressed: () {
                Navigator.pop(context);
                func();
              },
            ),
          ],
        ),
      ),
    );
  }
}





Widget loading(double w, h) {
  return Container(
    height: h,
    width: w,
    child: Center(
      child: Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.4),
       
            borderRadius: BorderRadius.all(Radius.circular(10))),
      child:  LoadingAnimationWidget.flickr(
      leftDotColor: const Color(0xFF0063DC),
      rightDotColor: const Color(0xFFFF0084),
      size: 50,
    ),
      ),
    ),
  );
}