import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class PartyController extends GetxController{
    final currentIndexBanner = RxInt(0);

  void udpateBannerIndex(int value) {
    currentIndexBanner.value = value;
    // debugPrint("index changed of homepage banner ${currentIndexBanner.value}");
  }
 final cIndex = RxInt(0);

  void udpateCIndex(int value) {
    cIndex.value = value;
    // debugPrint("index changed of homepage banner ${currentIndexBanner.value}");
  }

  List<String> imglst = [];

  Future<void> fetchBanners() async {
    try {
      String apiUrl = 'https://earnflow.live/api/home-page-banners';

      http.Response response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        Map<String, dynamic> data = json.decode(response.body);
        List<dynamic> userData = data['userData'];

        imglst.clear();

        for (var item in userData) {
          String imageUrl = item['image'];
          imglst.add(imageUrl);
        }
      } else {
        debugPrint('API Error: ${response.statusCode}');
      }
    } catch (e) {
      debugPrint('Error fetching banners: $e');
    }
  }


}