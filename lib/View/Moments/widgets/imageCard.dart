import 'package:faveping/commons/appImages.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ConainerCard extends StatelessWidget {
  String image;
 ConainerCard({super.key,required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 98,
      width: 195,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(image: AssetImage(image))),
    );
  }
}

Widget containerImage()
{
    return Container(
      height: 200,
      width:120,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(image: AssetImage(momentImage3))),
    );

}