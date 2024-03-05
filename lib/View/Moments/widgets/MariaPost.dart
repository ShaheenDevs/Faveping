import 'package:faveping/View/Moments/widgets/MariaCard.dart';
import 'package:faveping/View/Moments/widgets/alikhanCard.dart';
import 'package:faveping/View/Moments/widgets/imageCard.dart';
import 'package:faveping/View/widgets/sizebox.dart';
import 'package:faveping/commons/AppColor.dart';
import 'package:faveping/commons/appImages.dart';
import 'package:flutter/material.dart';

class MariaPost extends StatelessWidget {
  const MariaPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 30, top: 20, right: 30),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(children: [
              Image(
                image: AssetImage(backError),
                width: 10.38,
                height: 18,
              ),
              sizeof(10.0, 0.0),
              const Text(
                "Maria's Post",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ]),
            sizeof(0.0, 30.0),
            Card(
              color: white,
              child: Padding(
                padding: const EdgeInsets.only(top: 30, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MariaCard(
                      title: "Maria",
                      image: maria,
                    ),
                    sizeof(0.0, 10.0),
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
                      ],
                    ),
                    sizeof(0.0, 10.0),
                  ],
                ),
              ),
            ),
            sizeof(0.0, 20.0),
            const Text(
              "Coments: 2",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                fontFamily: 'Baloo',
              ),
            ),
            alikhan(false),
            alikhan(false)
          ]),
        ),
      )),
      bottomNavigationBar: Material(
        elevation: 6,
        shadowColor: primary.withOpacity(0.25),
        child: Container(
          height: 80,
        
          decoration: const BoxDecoration(
         borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
             color:white
          ),
          // Adjust the color as needed
            child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 20),
            child: Container(
              height: 50,
              width: 350,
            
               decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
              color: gradient1.withOpacity(0.04), 
              ),
            
              child: Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  
                  const Flexible(
                     child: TextField(
                       decoration: InputDecoration(
                         hintText: 'Write here',
                         border: InputBorder.none,
                       ),
                       style: TextStyle(
                         fontSize: 16,
                         fontWeight: FontWeight.bold,
                       ),
                     ),
                   ),
                    Image(image: AssetImage(send),width: 15,height: 13,)
                  ],
                ),
              ),
            ),
          ),
        ],
            ),
          
          ),
      ),
  
    );
  }
}
