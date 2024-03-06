import 'package:faveping/View_widgets/back_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../res/assetsImages/icons.dart';



class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final walletViewModel;
  const CustomAppBar({
    Key? key,
    required this.walletViewModel,
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

    widget.walletViewModel.getNameSharedPref();

    widget.walletViewModel.fetchUserWallet();
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
 
      
       
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
