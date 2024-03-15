import 'package:faveping/View/Fave/fave_profile.dart';
import 'package:faveping/View_widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../View_widgets/card_widget.dart';
import '../../res/commons/AppColors/AppColor.dart';
import '../../view_models/controller/Fave_controller/fave_controller.dart';

class FavePage extends StatefulWidget {
  const FavePage({super.key});

  @override
  State<FavePage> createState() => _FavePageState();
}

class _FavePageState extends State<FavePage> {
  FaveController faveController = Get.put(FaveController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: FaveAppBar(
        faveController: faveController,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            // faveCard(),
            SizedBox(
              height: Get.height * 0.1,
            ),
            InkWell(
              onTap: () => Get.to(FaveProfile()),
              child: ListTile(
                contentPadding: EdgeInsets.all(0),
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                      "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiYcpfphM1QJa4z41UmvGY06b0TfmPakWPuxSgbwJorwh7RO7k3ne6Q4ddwQLlkz_FmRkIyhzB86kNNKJRWe8U3-ePSh-O6nhGIpsXirt00aD9raE2y2Il20UzDmGMGxBye9nLtIx0B3Do5tz-1fiUKagp113jS0j5ao5qEOhDqfnne-fLZ75oOegHk0UQ/s1080/Attitude%20Girls%20DP%20For%20WhatsApp%203.jpg"),
                ),
                subtitle: Text(
                  "@maria",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                title: Text("Maria"),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "500",
                      style: TextStyle(
                          color: AppColors.primaryPink2,
                          fontWeight: FontWeight.bold,
                          fontSize: 19),
                    ),
                    Text("Followers")
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
