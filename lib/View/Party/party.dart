import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Utils/utils.dart';
import '../../View_widgets/appbar.dart';
import '../../res/commons/AppColors/AppColor.dart';
import '../../view_models/controller/Party_controller/party_controller.dart';

class PartyPage extends StatefulWidget {
  const PartyPage({super.key});

  @override
  State<PartyPage> createState() => _PartyPageState();
}

class _PartyPageState extends State<PartyPage> {
  PartyController partyController = Get.put(PartyController());
  @override
  void initState() {
    super.initState();
    partyController.fetchBanners();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: MyAppBarSimple(title: "Party"),
      body: Column(
        children: [
          ListTile(),
          FutureBuilder(
            future: partyController.fetchBanners(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: loading(Get.width, Get.height * 0.16));
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else {
                return Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
                      child: Container(
                        height: Get.height * 0.15,
                        width: Get.width,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.transparent,
                              spreadRadius: 2,
                              blurRadius: 8,
                            ),
                          ],
                        ),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: CarouselSlider(
                            options: CarouselOptions(
                              viewportFraction: 1,
                              height: Get.height * 0.54,
                              autoPlay: true,
                              enlargeCenterPage: false,
                              autoPlayInterval: const Duration(seconds: 5),
                              autoPlayAnimationDuration:
                                  const Duration(milliseconds: 800),
                              autoPlayCurve: Curves.fastOutSlowIn,
                              onPageChanged: (index, reason) {
                                partyController.udpateBannerIndex(index);
                              },
                            ),
                            items: partyController.imglst.map((imageUrl) {
                              return Builder(
                                builder: (BuildContext context) {
                                  return Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8.0, right: 8.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: CachedNetworkImage(
                                        width: Get.width,
                                        imageUrl: imageUrl,
                                        fit: BoxFit.cover,
                                        placeholder: (context, url) => const Center(
                                            child:
                                                CircularProgressIndicator()), // You can customize the placeholder widget
                                        errorWidget: (context, url, error) =>
                                            const Icon(Icons
                                                .error), // You can customize the error widget
                                      ),
                                    ),
                                  );
                                },
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                    Obx(() => Positioned(
                          bottom: Get.height * 0.020,
                          left: 1,
                          right: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: partyController.imglst.map((imageUrl) {
                              int index =
                                  partyController.imglst.indexOf(imageUrl);
                              return partyController.currentIndexBanner.value ==
                                      index
                                  ? Container(
                                      width: 20.0,
                                      height: 10.0,
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 2.0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        shape: BoxShape.rectangle,
                                        gradient: const LinearGradient(
                                          colors: [
                                            AppColors.primaryPink,
                                            AppColors.primaryPink2
                                          ],
                                        ),
                                      ),
                                    )
                                  : Container(
                                      width: 10.0,
                                      height: 10.0,
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 2.0),
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.grey,
                                      ),
                                    );
                            }).toList(),
                          ),
                        ))
                  ],
                );
              }
            },
          ),
          Obx(() => SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    InkWell(
                        onTap: () => partyController.udpateCIndex(0),
                        child: countryButton(
                            "India", 0, partyController.cIndex.value)),
                    InkWell(
                        onTap: () => partyController.udpateCIndex(1),
                        child: countryButton(
                            "Nepal", 1, partyController.cIndex.value)),
                    InkWell(
                        onTap: () => partyController.udpateCIndex(2),
                        child: countryButton(
                            "America", 2, partyController.cIndex.value)),
                    InkWell(
                        onTap: () => partyController.udpateCIndex(3),
                        child: countryButton(
                            "Australia", 3, partyController.cIndex.value)),
                    InkWell(
                        onTap: () => partyController.udpateCIndex(4),
                        child: countryButton(
                            "Indonesia", 4, partyController.cIndex.value)),
                    InkWell(
                        onTap: () => partyController.udpateCIndex(5),
                        child: countryButton(
                            "Malasia", 5, partyController.cIndex.value)),
                  ],
                ),
              )),

              
        ],
      ),
    );
  }
}

Widget countryButton(title, index, cindex) {
  return Container(
    margin: EdgeInsets.all(2),
    child: Padding(
      padding: const EdgeInsets.all(4.0),
      child: Center(
        child: Text(
          title,
          style:
              TextStyle(color: cindex == index ? Colors.white : Colors.black),
        ),
      ),
    ),
    decoration: BoxDecoration(
        color: cindex != index ? Colors.grey.withOpacity(0.1) : null,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        gradient: cindex == index
            ? LinearGradient(
                colors: [AppColors.primaryPink, AppColors.primaryPink2])
            : null),
  );
}
