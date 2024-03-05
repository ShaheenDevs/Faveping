import 'package:faveping/View/bottomNavigation/widgets/selectedIndex.dart';
import 'package:faveping/commons/appImages.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (
        getSelectedScreen(selectedIndex)
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,

          currentIndex: selectedIndex,

          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Image(image: AssetImage(moments),width: 25,height: 37,), label: "Moments"),
            BottomNavigationBarItem(
                icon: Image(image: AssetImage(chats),width: 25,height: 37,), label: "Chat"),
            BottomNavigationBarItem(
                icon: Image(image: AssetImage(fave),width: 25,height: 37,), label: "Fave"),
            BottomNavigationBarItem(
                icon: Image(image: AssetImage(party),width: 25,height: 37,), label: "Party"),
            BottomNavigationBarItem(
                icon: Image(image: AssetImage(profile),width: 25,height: 37,), label: "Profile"),
          ]),
    );
  }
}
