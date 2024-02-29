import 'package:faveping/widgets/AfterLoginAppBar2.dart';
import 'package:flutter/material.dart';
import 'package:faveping/widgets/afterLoginAppBar.dart';

class LoginedProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight + 150.0), // Adjust the height as needed
        child: appBarUser(),
      ),
      body: Container(
        child: Center(
          child: Text('Your Profile'),
        ),
      ),
    );
  }
}