import 'package:faveping/View/chatsScreen/Widgets/chatBody.dart';
import 'package:faveping/View/chatsScreen/Widgets/listView.dart';
import 'package:faveping/View/widgets/sizebox.dart';
import 'package:faveping/commons/AppColor.dart';
import 'package:faveping/commons/appImages.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
          padding: const EdgeInsets.only(left: 30, top: 20, right: 10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(
              "Chats",
              style: TextStyle(
                  color: primary, fontWeight: FontWeight.bold, fontSize: 20),
            ),
            sizeof(0.0, 20.0),
            const Text(
              "Following",
              style: TextStyle(color: primary, fontWeight: FontWeight.bold),
            ),
            listWidget(),
            sizeof(0.0, 10.0),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: gradient1.withOpacity(0.04),
              ),
              child: Row(
                children: [
                  sizeof(20.0, 0.0),
                  Image(
                    image: AssetImage(search),
                    width: 17,
                    height: 17,
                  ),
                  sizeof(10.0, 0.0),
                  const Flexible(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        border: InputBorder.none,
                      ),
                    ),
                  )
                ],
              ),
            ),
            sizeof(0.0, 20.0),
            const Text(
              "Messages",
              style: TextStyle(color: primary, fontWeight: FontWeight.bold),
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (BuildContext context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>ChatBody()),
                      );
                    },
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(aliKhan),
                      ),
                      title: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Patrick Bateman",
                            style: TextStyle(
                              color: primary,
                            ),
                          ),
                          Text(
                            "Big fan sir what's up!",
                            style: TextStyle(fontSize: 10),
                          )
                        ],
                      ),
                      trailing: const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            child: Text(
                              "1",
                              style: TextStyle(fontSize: 9),
                            ),
                            radius: 9,
                          ),
                          Text(
                            "20:25",
                            style: TextStyle(fontSize: 10),
                          )
                        ],
                      ),
                    ),
                  );
                })
          ])),
    );
  }
}
