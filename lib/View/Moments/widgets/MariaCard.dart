import 'package:faveping/commons/AppColor.dart';
import 'package:faveping/commons/appImages.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MariaCard extends StatelessWidget {
  String image;
  String title;
  MariaCard({super.key, required this.image,required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(backgroundImage: AssetImage(image)),
      title:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: primary,
            ),
          ),
          const Text(
            "16:05,10 Jan,2024",
            style: TextStyle(fontSize: 12),
          )
        ],
      ),
      trailing: Image(
        image: AssetImage(dropDown),
        width: 4,
        height: 15,
      ),
    );
  }
}
