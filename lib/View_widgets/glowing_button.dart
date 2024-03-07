import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:walk_line_container/walk_line_container.dart';

import '../res/commons/AppColors/AppColor.dart';

class GlowingButton extends StatefulWidget {
  final String text;
  const GlowingButton({
    Key? key,
    required this.text,
  }) : super(key: key);
  @override
  _GlowingButtonState createState() => _GlowingButtonState();
}

class _GlowingButtonState extends State<GlowingButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    )..repeat(reverse: true);
    _animation = Tween<double>(begin: 0.0, end: 7.0).animate(
        _animationController); // Adjust the end value for reduced glow width
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (BuildContext context, Widget? child) {
        return Container(
          width: Get.width * 0.2,
          height: Get.height * 0.037,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.purple.withOpacity(0.4),
                blurRadius: _animation.value,
                spreadRadius: _animation.value,
              ),
            ],
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [AppColors.primaryPink, AppColors.primaryPink2]),
            color: Colors.purple,
          ),
          child: Center(
            child: Text(
              widget.text,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
              ),
            ),
          ),
        );
      },
    );
  }
}

class GlowingButtonUnfollow extends StatefulWidget {
  final String text;
  const GlowingButtonUnfollow({
    Key? key,
    required this.text,
  }) : super(key: key);
  @override
  _GlowingButtonUnfollowState createState() => _GlowingButtonUnfollowState();
}

class _GlowingButtonUnfollowState extends State<GlowingButtonUnfollow>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    )..repeat(reverse: true);
    _animation = Tween<double>(begin: 0.0, end: 7.0).animate(
        _animationController); // Adjust the end value for reduced glow width
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (BuildContext context, Widget? child) {
        return Container(
          width: Get.width * 0.25,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.purple.withOpacity(0.2),
                blurRadius: _animation.value,
                spreadRadius: _animation.value,
              ),
            ],
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [AppColors.primaryPink, AppColors.primaryPink2]),
            color: Colors.purple,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.add,
                color: Colors.white,
              ),
              Text(
                widget.text,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class GlowingButtonFollow extends StatefulWidget {
  final String text;
  const GlowingButtonFollow({
    Key? key,
    required this.text,
  }) : super(key: key);
  @override
  _GlowingButtonFollowState createState() => _GlowingButtonFollowState();
}

class _GlowingButtonFollowState extends State<GlowingButtonFollow>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    )..repeat(reverse: true);
    _animation = Tween<double>(begin: 0.0, end: 7.0).animate(
        _animationController); // Adjust the end value for reduced glow width
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (BuildContext context, Widget? child) {
        return Container(
          width: Get.width * 0.3,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.purple.withOpacity(0.2),
                blurRadius: _animation.value,
                spreadRadius: _animation.value,
              ),
            ],
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [AppColors.primaryPink, AppColors.primaryPink2]),
            color: Colors.purple,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.add,
                color: Colors.white,
              ),
              Text(
                widget.text,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

Widget messageFaveButton() {
  return Container(
    width: Get.width * 0.3,
    height: 40,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      border: Border.all(color: AppColors.primaryPink),
      boxShadow: [
        BoxShadow(
          color: Colors.purple.withOpacity(0.2),
        ),
      ],
      // gradient: LinearGradient(
      //     begin: Alignment.topRight,
      //     end: Alignment.bottomLeft,
      //     colors: [AppColors.primaryPink, AppColors.primaryPink2]),
      color: Colors.white,
    ),
    child: Center(
      child: Text(
        "Message",
        style: TextStyle(
          fontSize: 16.0,
          color: AppColors.primaryPink,
        ),
      ),
    ),
  );
}
