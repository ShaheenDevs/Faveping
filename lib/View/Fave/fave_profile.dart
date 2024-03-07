import 'package:faveping/View_widgets/appbar.dart';
import 'package:faveping/View_widgets/glowing_button.dart';
import 'package:faveping/res/assetsImages/images.dart';
import 'package:faveping/res/commons/AppColors/AppColor.dart';
import 'package:faveping/res/commons/appImages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../view_models/controller/Fave_controller/fave_controller.dart';

class FaveProfile extends StatefulWidget {
  const FaveProfile({super.key});

  @override
  State<FaveProfile> createState() => _FaveProfileState();
}

class _FaveProfileState extends State<FaveProfile> {
  FaveController faveController = Get.put(FaveController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: MyAppBar(title: ""),
      body: Column(
        children: [
          Container(
            height: 220,
            // color: Colors.red,
            child: Stack(
              children: [
                Container(
                  height: 130,
                  width: Get.width,
                  // color: Colors.amber,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(faveProfileBg), fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                  child: CircleAvatar(
                    radius: 80,
                    backgroundImage: NetworkImage(
                        "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiYcpfphM1QJa4z41UmvGY06b0TfmPakWPuxSgbwJorwh7RO7k3ne6Q4ddwQLlkz_FmRkIyhzB86kNNKJRWe8U3-ePSh-O6nhGIpsXirt00aD9raE2y2Il20UzDmGMGxBye9nLtIx0B3Do5tz-1fiUKagp113jS0j5ao5qEOhDqfnne-fLZ75oOegHk0UQ/s1080/Attitude%20Girls%20DP%20For%20WhatsApp%203.jpg"),
                  ),
                  left: 0,
                  right: 0,
                  top: 50,
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    "500",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Followers",
                    style: TextStyle(fontSize: 15, color: Colors.black45),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Maria",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    "@mariaofficial",
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "2",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Text(
                    "Moments",
                    style: TextStyle(fontSize: 15, color: Colors.black45),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "Today I will focus on stressing less and feeling blessed",
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Obx(
            () => Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                faveController.follow.value == true
                    ? GestureDetector(
                        onTap: () => faveController.updateFollow(false),
                        child: GlowingButtonFollow(text: "Follow"))
                    : GestureDetector(
                        onTap: () => faveController.updateFollow(true),
                        child: GlowingButtonUnfollow(text: "Unfollow")),
                messageFaveButton()
              ],
            ),
          ),
          Obx(
            () => Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                    onTap: () => faveController.updateIndex(0),
                    child: faveProfileTextBTN(
                        "Moments", 0, faveController.currentIndex.value)),
                InkWell(
                    onTap: () => faveController.updateIndex(1),
                    child: faveProfileTextBTN(
                        "Photos", 1, faveController.currentIndex.value)),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget faveProfileTextBTN(title, index, currentIndex) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Column(
      children: [
        Text(title),
        index == currentIndex
            ? Container(
                width: 40,
                height: 2,
                color: AppColors.primaryPink,
              )
            : Container()
      ],
    ),
  );
}
