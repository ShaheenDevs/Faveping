import 'package:faveping/View_widgets/card_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../View_widgets/appbar.dart';
import '../../view_models/controller/moments_controller/moments_controller.dart';

class MomentsPage extends StatefulWidget {
  const MomentsPage({super.key});

  @override
  State<MomentsPage> createState() => _MomentsPageState();
}

class _MomentsPageState extends State<MomentsPage> {
  MomentsController momentsController = Get.put(MomentsController());
  List imageUrls = [
    "https://photosnow.net/wp-content/uploads/2023/12/cute-girl-pic27.jpg",
    // "https://www.unigreet.com/wp-content/uploads/2022/09/cute-flowers-dp-1024x960.jpg",
    // "https://4.bp.blogspot.com/-hDEE-hptCl8/Vt022iYLMhI/AAAAAAAAA-4/B40JdQdsqk0/s1600/Nice%2BFlowers%2BWallpaepr.jpg",
    // "https://girlsdp1.com/wp-content/uploads/2023/04/37-1-864x1024.jpg"
  ];
  List imageUrls2 = [
    "https://photosnow.net/wp-content/uploads/2023/12/cute-girl-pic27.jpg",
    "https://www.unigreet.com/wp-content/uploads/2022/09/cute-flowers-dp-1024x960.jpg",
    // "https://4.bp.blogspot.com/-hDEE-hptCl8/Vt022iYLMhI/AAAAAAAAA-4/B40JdQdsqk0/s1600/Nice%2BFlowers%2BWallpaepr.jpg",
    // "https://girlsdp1.com/wp-content/uploads/2023/04/37-1-864x1024.jpg"
  ];
  List imageUrls3 = [
    "https://photosnow.net/wp-content/uploads/2023/12/cute-girl-pic27.jpg",
    "https://www.unigreet.com/wp-content/uploads/2022/09/cute-flowers-dp-1024x960.jpg",
    "https://4.bp.blogspot.com/-hDEE-hptCl8/Vt022iYLMhI/AAAAAAAAA-4/B40JdQdsqk0/s1600/Nice%2BFlowers%2BWallpaepr.jpg",
    // "https://girlsdp1.com/wp-content/uploads/2023/04/37-1-864x1024.jpg"
  ];
  List imageUrls4 = [
    "https://photosnow.net/wp-content/uploads/2023/12/cute-girl-pic27.jpg",
    "https://www.unigreet.com/wp-content/uploads/2022/09/cute-flowers-dp-1024x960.jpg",
    "https://4.bp.blogspot.com/-hDEE-hptCl8/Vt022iYLMhI/AAAAAAAAA-4/B40JdQdsqk0/s1600/Nice%2BFlowers%2BWallpaepr.jpg",
    "https://girlsdp1.com/wp-content/uploads/2023/04/37-1-864x1024.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        momentsController: momentsController,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: Get.height * 0.1,
            ),
            momentCard(imageUrls),
            momentCard(imageUrls2),
            momentCard(imageUrls3),
            momentCard(imageUrls4),
          ],
        ),
      ),
    );
  }
}
