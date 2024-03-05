import 'package:faveping/View/Moments/widgets/MariaCard.dart';
import 'package:faveping/View/Moments/widgets/MariaPost.dart';
import 'package:faveping/View/Moments/widgets/alikhanCard.dart';
import 'package:faveping/View/Moments/widgets/imageCard.dart';
import 'package:faveping/View/Moments/widgets/latestButton.dart';
import 'package:faveping/View/widgets/sizebox.dart';
import 'package:faveping/commons/AppColor.dart';
import 'package:faveping/commons/appImages.dart';
import 'package:flutter/material.dart';

class Moments extends StatefulWidget {
  const Moments({super.key});

  @override
  State<Moments> createState() => _MomentsState();
}

class _MomentsState extends State<Moments> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 30, top: 20),
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Moments",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                fontFamily: 'Baloo',
              ),
            ),
            Container(
              color: white.withOpacity(0.5),
              child: Row(
                children: [
                  TrendButton(trendName: "TOP", index: 0, image: top),
                  TrendButton(trendName: "latest", index: 1, image: latest),
                ],
              ),
            ),
            sizeof(0.0, 20.0),

            Expanded(
              child: ListView(
               
                children: [

                  InkWell(
                    onTap: (){
                     Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MariaPost()),
                    );
                    },
                    child: MariaCard(
                      title: "Maria",
                      image: maria,
                    ),
                  ),
                  const Text(
                    "How is it going ....",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      fontFamily: 'Baloo',
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            ConainerCard(
                              image: momentImage,
                            ),
                            sizeof(0.0, 5.0),
                            ConainerCard(
                              image: momentImage2,
                            ),
                          ],
                        ),
                      ),
                      Expanded(flex: 2, child: containerImage()),
                    ],
                  ),
                  sizeof(0.0, 10.0),
                  Row(
                    children: [
                      Image(
                        image: AssetImage(heart),
                        width: 17,
                        height: 14,
                      ),
                      sizeof(5.0, 0.0),
                      Text(
                        "564 likes",
                        style: TextStyle(color: primary.withOpacity(0.8)),
                      ),
                      sizeof(20.0, 0.0),
                      Image(
                        image: AssetImage(chat),
                        width: 17,
                        height: 14,
                      ),
                      sizeof(5.0, 0.0),
                      Text(
                        "11 Comments",
                        style: TextStyle(color: primary.withOpacity(0.8)),
                      ),
                    ],
                  ),
                  alikhan(true),
                  sizeof(0.0, 10.0),
                  MariaCard(image: maria, title: "Patrick Bateman"),
                  Text(
                    "Love FavePing!",
                    style: TextStyle(color: primary.withOpacity(0.8)),
                  ),
                  sizeof(0.0, 5.0),
                  Container(
                    height: 204,
                    width: 323,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(image: AssetImage(aliKhan))),
                  )
                ],
              ),
            ),
          ],
        ),
        
      ),
    );
  }
}
