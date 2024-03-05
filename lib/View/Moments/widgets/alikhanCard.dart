import 'package:faveping/commons/AppColor.dart';
import 'package:faveping/commons/appImages.dart';
import 'package:flutter/material.dart';

Widget alikhan(bool colorState) {
  return Container(
      width: 323,
      //height: 54,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),color:colorState? gradient1.withOpacity(0.04):null),
      child: ListTile(
        leading: CircleAvatar(backgroundImage: AssetImage(aliKhan)),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "AliKhan",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: primary,
                
              ),
            ),
            Text(
              "Love the Photo",
              style: TextStyle(fontSize: 12),
            )
          ],
        ),
       
      ));
}
