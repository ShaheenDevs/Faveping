import 'dart:ui';
import 'package:faveping/View/Chat/chat.dart';
import 'package:faveping/View/Fave/fave.dart';
import 'package:faveping/View/Party/party.dart';
import 'package:faveping/View/Profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'View/Moments/moments.dart';
import 'res/assetsImages/icons.dart';
import 'view_models/controller/bottomnavbar/bottomnav_viewmodel.dart';

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({super.key});

  @override
  _MyBottomNavBarState createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  int _currentIndex = 0;
  List<Widget> screens = [
    const MomentsPage(),
    const ChatPage(),
    const FavePage(),
    const PartyPage(),
    const ProfilePage()
  ];

  var selected = 1;
  final BottomNavController bottomnavController = BottomNavController();

  @override
  void initState() {
    super.initState();
    // bottomnavController.getversion().then((value) {
    //   if (
    //       // 5 == 7
    //       bottomnavController.version != null &&
    //           bottomnavController.version <= 4) {
    // // 3
    //     debugPrint(
    //         "no need to download the latest version currentversion:${bottomnavController.version}");
    //   } else {
    //     Navigator.pushReplacement(
    //         context,
    //         MaterialPageRoute(
    //             builder: (context) => NewVersionPage(
    //                   versiondata: bottomnavController.versiondata,
    //                 )));
    //   }
    // });


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
              child: Container(
                  // height: 70,
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 8.0,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              _currentIndex = 0;
                            });
                          },
                          child: bottomnavicon(AppIcons.home, "Moments",
                              _currentIndex, 0)),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              _currentIndex = 1;
                            });
                          },
                          child: bottomnavicon(
                              AppIcons.chats, "Chat", _currentIndex, 1)),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              _currentIndex = 2;
                            });
                          },
                          child: bottomnavicon(AppIcons.fave,
                              "Fave", _currentIndex, 2)),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              _currentIndex = 3;
                            });
                          },
                          child: bottomnavicon(AppIcons.party, "Party",
                              _currentIndex, 3)),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              _currentIndex = 4;
                            });
                          },
                          child: bottomnavicon(AppIcons.profile, "Profile",
                              _currentIndex, 4)),
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

Widget bottomnavicon(iamge, text, selected, index) {
  return Padding(
    padding: const EdgeInsets.only(top: 8.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image(
          image: AssetImage(iamge),
          fit: BoxFit.cover,
          height: 30,
        ),
        Text(
          text,
          style: TextStyle(
              color: selected == index ? Colors.white : Colors.white54),
        ),
        Container(
          width: Get.width * 0.15,
          height: 3,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              color: selected == index
                  ? const Color.fromARGB(143, 147, 39, 143)
                  : Colors.transparent),
        )
      ],
    ),
  );
}