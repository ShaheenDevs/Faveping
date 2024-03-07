import 'package:faveping/res/assetsImages/icons.dart';
import 'package:faveping/res/commons/appImages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

import '../res/commons/AppColors/AppColor.dart';

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

Widget momentCard(imageUrls) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiYcpfphM1QJa4z41UmvGY06b0TfmPakWPuxSgbwJorwh7RO7k3ne6Q4ddwQLlkz_FmRkIyhzB86kNNKJRWe8U3-ePSh-O6nhGIpsXirt00aD9raE2y2Il20UzDmGMGxBye9nLtIx0B3Do5tz-1fiUKagp113jS0j5ao5qEOhDqfnne-fLZ75oOegHk0UQ/s1080/Attitude%20Girls%20DP%20For%20WhatsApp%203.jpg"),
          ),
          subtitle: Text("16:05, 10 Jan, 2024"),
          title: Text("Maria"),
          trailing: IconButton(
              onPressed: () {},
              icon: Image(
                image: AssetImage(AppIcons.menu),
                height: 20,
              )),
        ),
        SizedBox(
            height: Get.height * 0.3,
            child: CustomImageLayout(
              imageUrls: imageUrls,
            )),
        Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: Image(
                  image: AssetImage(AppIcons.like),
                  height: 20,
                )),
            Text(
              "22 Likes",
              style: TextStyle(color: Colors.black.withOpacity(0.5)),
            ),
            IconButton(
                onPressed: () {},
                icon: Image(
                  image: AssetImage(AppIcons.comment),
                  height: 20,
                )),
            Text(
              "1 Comments",
              style: TextStyle(color: Colors.black.withOpacity(0.5)),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Container(
            decoration: BoxDecoration(
                color: AppColors.primaryPink.withOpacity(0.1),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://designimages.appypie.com/displaypicture/displaypicture-17-face-person.jpg"),
              ),
              subtitle: Text(
                "good to see you again",
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              title: Text("Ali Khan"),
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Divider()
      ],
    ),
  );
}

Widget faveCard() {
  return Container(
    child: Center(
      child: Text("data"),
    ),
  );
}

class CustomImageLayout extends StatelessWidget {
  final List imageUrls;

  CustomImageLayout({required this.imageUrls});

  @override
  Widget build(BuildContext context) {
    // If there are no images, return an empty container
    if (imageUrls.isEmpty) {
      return Container();
    }

    // Check the number of images
    if (imageUrls.length == 1) {
      // If there's only one image, display it in full width
      return SizedBox(
        height: Get.height * 0.3,
        width: Get.width * 0.96,
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: Image.network(
            imageUrls[0],
            fit: BoxFit.cover,
          ),
        ),
      );
    } else if (imageUrls.length == 2) {
      // If there are two images, display them side by side
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: Get.height * 0.3,
            width: Get.width * 0.45,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Image.network(
                imageUrls[0],
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 4), // Spacer between images

          SizedBox(
            height: Get.height * 0.3,
            width: Get.width * 0.45,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Image.network(
                imageUrls[1],
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      );
    } else if (imageUrls.length == 3) {
      // If there are more than three images, show the first image on the left
      // and two images on the right
      return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: Image.network(
              imageUrls[0],
              fit: BoxFit.cover,
              height: Get.height * 0.3,
              width: Get.width * 0.45,
            ),
          ),
          SizedBox(width: 4), // Spacer between images
          Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Image.network(
                  imageUrls[1],
                  fit: BoxFit.cover,
                  width: Get.width * 0.45,
                  height: Get.height * 0.145,
                ),
              ),
              SizedBox(height: 4), // Spacer between images
              Image.network(
                imageUrls[2],
                fit: BoxFit.cover,
                width: Get.width * 0.45,
                height: Get.height * 0.145,
              ),
            ],
          ),
        ],
      );
    } else {
      {
        // If there are more than three images, show the first image on the left
        // and two images on the right
        return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Image.network(
                imageUrls[0],
                fit: BoxFit.cover,
                height: Get.height * 0.3,
                width: Get.width * 0.45,
              ),
            ),
            SizedBox(width: 4), // Spacer between images
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Image.network(
                    imageUrls[1],
                    fit: BoxFit.cover,
                    width: Get.width * 0.45,
                    height: Get.height * 0.145,
                  ),
                ),
                SizedBox(height: 4), // Spacer between images
                Stack(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.145,
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Image.network(
                          imageUrls[2],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned.fill(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.black.withOpacity(0.5),
                        ),
                        child: Center(
                          child: Text(
                            '+${imageUrls.length - 3} more',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        );
      }
    }
  }
}
