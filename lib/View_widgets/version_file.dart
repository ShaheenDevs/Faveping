// ignore_for_file: camel_case_types


import 'package:faveping/View_widgets/glowing_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../res/assetsImages/images.dart';
import '../utils/utils.dart';

class NewVersionPage extends StatelessWidget {
  const NewVersionPage({
    Key? key,
    required this.versiondata,
  }) : super(key: key);
  final versiondata;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bg.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Center(
                      child: Image(
                        image: AssetImage(update),
                        width: Get.height * 0.3,
                      ),
                    ),
                    Text(
                      versiondata["app_version"][0]["title"].toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              InkWell(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                onTap: () async {
                  if (1 == 1) {
                    await launch(
                        versiondata["app_version"][0]["link"].toString(),
                        forceWebView: false);
                  } else {
                    throw Utils.snackbar("Unable to get the data");
                  }
                },
                child: GlowingButton(
                  text: "Update Now!",
                ),
              )
            ],
          )),
    );
  }
}