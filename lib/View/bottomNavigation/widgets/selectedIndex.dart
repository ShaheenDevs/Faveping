import 'package:faveping/View/Moments/ProfileScreen/profile.dart';
import 'package:faveping/View/Moments/moments.dart';
import 'package:faveping/View/chatsScreen/Chat.dart';
import 'package:flutter/material.dart';

Widget getSelectedScreen(int selectedIndex) {
  switch (selectedIndex) {
    case 0:
      return Moments();

    case 1:
      return ChatScreen();

    case 2:
      return Container();
    case 3:
    return Container();
    case 4:
      return Profile();
    default:
      return Container();
  }
}
