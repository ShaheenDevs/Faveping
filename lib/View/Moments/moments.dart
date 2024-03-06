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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        momentsController: momentsController,
      ),
      body: Column(
        children: [momentCard()],
      ),
    );
  }
}
