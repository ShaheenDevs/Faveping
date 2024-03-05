import 'package:faveping/View/widgets/sizebox.dart';
import 'package:faveping/commons/AppColor.dart';
import 'package:faveping/commons/appImages.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Image(image: AssetImage(profileBackground),width: 393,height: 179,),
            sizeof(0.0, 50.0),
           Padding(
             padding: const EdgeInsets.only(left: 20,right: 20),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Column(
                  children: [
                    Text("500",style: TextStyle(fontSize:17,color: primary,fontWeight: FontWeight.w700),),
                     Text("Followers",style: TextStyle(color: primary.withOpacity(0.5),fontWeight: FontWeight.bold),)
                  ],
                ),
             Column(
                  children: [
                    Text("Ali Khan",style: TextStyle(fontSize:30,color: primary,fontWeight: FontWeight.w500),),
                     Text("@alikhan00",style: TextStyle(color: primary.withOpacity(0.5),fontWeight: FontWeight.w500),)
                  ],
                ),
                Column(
                  children: [
                    Text("3",style: TextStyle(fontSize:17,color: primary,fontWeight: FontWeight.w700),),
                     Text("Posts",style: TextStyle(color: primary.withOpacity(0.5),fontWeight: FontWeight.bold),)
                  ],
                ),
              ] 
              ),
           ),
           sizeof(0.0, 20.0),
            Text("little description is here lorem ipsum ",style: TextStyle(color: primary.withOpacity(0.5),fontWeight: FontWeight.bold),)
                  

                      
          ],
        ),
        Positioned(
         top: 40,
          left: 20,
          right: 20,
          child: SizedBox(
           width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image(image: AssetImage(backError), width: 10, height: 18,),
                Image(image: AssetImage(alert), width: 18, height: 18,)
              ],
            ),
          )
        ),
        Positioned(
          left: 140,
          top: 179 / 1.5, 
          child: CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(profilePic),
          ),
        )
        


      ],
    );
  }
}