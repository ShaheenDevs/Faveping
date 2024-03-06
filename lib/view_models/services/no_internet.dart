
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../View_widgets/glowing_button.dart';

class NoInternet extends StatelessWidget {
  const NoInternet({
    Key? key,
    required this.func,
  }) : super(key: key);
  final Function func;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/bg.png"),
        fit: BoxFit.fill,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: AssetImage("assets/images/nointernet.png"),
                height: Get.height * 0.25,
              ),
              SizedBox(
                height: Get.height * 0.05,
              ),
              Text(
                'Ooops!',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              SizedBox(
                width: Get.width * 0.7,
                child: Text('no_internet_desc'.tr),
              ),
              SizedBox(
                height: Get.height * 0.05,
              ),
              InkWell(
                onTap: () {
                  func();
                },
                child: GlowingButton(
                  text: "retry".tr,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}