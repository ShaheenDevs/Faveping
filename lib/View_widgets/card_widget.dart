import 'package:faveping/res/commons/appImages.dart';
import 'package:flutter/material.dart';

Widget listWidget() {
  return Row(
    children: [
      Expanded(
        child: Container(
          height: 80, // Adjust the height as needed
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10, // Replace this with your actual number of chats
              itemBuilder: (BuildContext context, int index) {
                // Replace this with your chat avatar widget
                return Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(aliKhan),
                      ),
                      const Text("Patrick Bat...")
                    ],
                  ),
                );
              }),
        ),
      ),
      Column(
        children: [
          Image(
            image: AssetImage(seeAll),
            width: 26,
            height: 26,
          ),
          const Text(
            "See All",
            style: TextStyle(fontSize: 12),
          )
        ],
      )
    ],
  );
}




Widget momentCard(){
  return Container(
    child: Center(
      child: Text("data"),
    ),
  );
}

Widget faveCard(){
  return Container(
    child: Center(
      child: Text("data"),
    ),
  );
}