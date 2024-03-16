import 'package:faveping/View/Fave/fave_search.dart';
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
  Size get preferredSize => Size.fromHeight(Get.height * 0.12);
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
      // height: Get.height * 0.1,
      decoration: BoxDecoration(
          color: Color(0xffFFFBFF).withOpacity(0.95),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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

class MyAppBarSimple extends StatelessWidget implements PreferredSizeWidget {
  // final Widget leading;
  final String title;

  const MyAppBarSimple({required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      backgroundColor: Color(0xffFFFBFF).withOpacity(0.95),
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  // final Widget leading;
  final String title;

  const MyAppBar({required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      backgroundColor: Colors.transparent,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
          child: Center(
              child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.keyboard_arrow_left_sharp,
              color: AppColors.primaryPink2,
            ),
          )),
        ),
      ),
      title: Text(title),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class FaveAppBar extends StatefulWidget implements PreferredSizeWidget {
  final faveController;
  const FaveAppBar({
    Key? key,
    required this.faveController,
  }) : super(key: key);
  @override
  _FaveAppBarState createState() => _FaveAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(Get.height * 0.12);
}

class _FaveAppBarState extends State<FaveAppBar>
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
      // height: Get.height * 0.1,
      decoration: BoxDecoration(
          color: Color(0xffFFFBFF).withOpacity(0.95),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Faves",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
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
                IconButton(
                    onPressed: () {
                      Get.to(FaveSearch());
                    },
                    icon: Icon(
                      Icons.search,
                      size: 30,
                    ))
              ],
            ),
          ),
// updateIndex()
          Expanded(
              child: Obx(
            () => Row(
              children: [
                InkWell(
                  onTap: () => widget.faveController.updateIndex(0),
                  child: Container(
                    width: Get.width * 0.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                        ),
                        gradient: widget.faveController.currentIndex == 0
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
                              color: widget.faveController.currentIndex == 0
                                  ? AppColors.primaryPink
                                  : AppColors.black.withOpacity(0.8)),
                          Text(
                            "  Top",
                            style: TextStyle(
                                fontSize: 20,
                                color: widget.faveController.currentIndex == 0
                                    ? AppColors.primaryPink
                                    : AppColors.black.withOpacity(0.8)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => widget.faveController.updateIndex(1),
                  child: Container(
                    width: Get.width * 0.5,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(bottomRight: Radius.circular(20)),
                        gradient: widget.faveController.currentIndex == 1
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
                              color: widget.faveController.currentIndex == 1
                                  ? AppColors.primaryPink
                                  : AppColors.black.withOpacity(0.8)),
                          Text(
                            "  Latest",
                            style: TextStyle(
                                fontSize: 20,
                                color: widget.faveController.currentIndex == 1
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
