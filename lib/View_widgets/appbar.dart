import 'package:faveping/res/commons/AppColors/AppColor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:faveping/View_widgets/back_button.dart';

import '../res/assetsImages/icons.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final momentsController;
  const CustomAppBar({
    Key? key,
    required this.momentsController,
  }) : super(key: key);
  @override
  _CustomAppBarState createState() => _CustomAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(Get.height * 0.1);
}

class _CustomAppBarState extends State<CustomAppBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat(reverse: true);
    _animation =
        Tween<Offset>(begin: const Offset(0, 0), end: const Offset(0, 0.2))
            .animate(_animationController);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.1,
      decoration: BoxDecoration(
          color: Color(0xffFFFBFF).withOpacity(0.95),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20))),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Moments",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                SlideTransition(
                  position: _animation,
                  child: const Image(
                    image: AssetImage(AppIcons.heart2),
                    height: 40,
                    width: 40,
                  ),
                ),
              ],
            ),
          ),
// updateIndex()
          Expanded(
              child: Obx(
            () => Row(
              children: [
                InkWell(
                  onTap: () => widget.momentsController.updateIndex(0),
                  child: Container(
                    width: Get.width * 0.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                        ),
                        gradient: widget.momentsController.currentIndex == 0
                            ? LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                    Colors.transparent,
                                    AppColors.primaryPink.withOpacity(0.08)
                                  ])
                            : null),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image(
                              image: AssetImage(AppIcons.top),
                              color: widget.momentsController.currentIndex == 0
                                  ? AppColors.primaryPink
                                  : AppColors.black.withOpacity(0.8)),
                          Text(
                            "  Top",
                            style: TextStyle(
                                fontSize: 20,
                                color:
                                    widget.momentsController.currentIndex == 0
                                        ? AppColors.primaryPink
                                        : AppColors.black.withOpacity(0.8)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => widget.momentsController.updateIndex(1),
                  child: Container(
                    width: Get.width * 0.5,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(bottomRight: Radius.circular(20)),
                        gradient: widget.momentsController.currentIndex == 1
                            ? LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                    Colors.transparent,
                                    AppColors.primaryPink.withOpacity(0.08)
                                  ])
                            : null),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image(
                              image: AssetImage(AppIcons.latest),
                              height: 20,
                              color: widget.momentsController.currentIndex == 1
                                  ? AppColors.primaryPink
                                  : AppColors.black.withOpacity(0.8)),
                          Text(
                            "  Latest",
                            style: TextStyle(
                                fontSize: 20,
                                color:
                                    widget.momentsController.currentIndex == 1
                                        ? AppColors.primaryPink
                                        : AppColors.black.withOpacity(0.8)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  // final Widget leading;
  final String title;

  const MyAppBar({required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      backgroundColor: Color(0xffFFFBFF).withOpacity(0.95),
      leading: backButon(context),
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
