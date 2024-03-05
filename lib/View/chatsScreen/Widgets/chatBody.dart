import 'package:faveping/View/chatsScreen/Widgets/clipper.dart';
import 'package:faveping/View/widgets/sizebox.dart';
import 'package:faveping/commons/AppColor.dart';
import 'package:faveping/commons/appImages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';

class ChatBody extends StatelessWidget {
  const ChatBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.only(left: 30, top: 20, right: 30),
      child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(children: [
          Image(
            image: AssetImage(backError),
            width: 10.38,
            height: 18,
          ),
          sizeof(30.0, 0.0),
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(aliKhan),
          ),
          sizeof(20.0, 0.0),
          const Text(
            "Patrick Bateman",
            style: TextStyle(fontSize: 20),
          ),
        ]),
        Divider(),
        sizeof(0.0, 30.0),
        ChatBubble(
          clipper: SenderBubbleClipper(),
          alignment: Alignment.topRight,
          margin: const EdgeInsets.only(bottom: 10),
          backGroundColor:clipperColor,
          child: const Text(
            "Hello, how are you?",
            style: TextStyle(color:primary),
          ),
        ),
        ChatBubble(
          clipper: ReceiverBubbleClipper(),
          alignment: Alignment.topLeft,

          margin: const EdgeInsets.only(bottom: 10),
          backGroundColor:gradient1.withOpacity(0.04),
          child: const Text("I'm good, thank you!"),
        ),
      ])),
    )));
  }
}
