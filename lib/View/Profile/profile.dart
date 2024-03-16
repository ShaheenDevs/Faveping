import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
              ),
              Column(
                children: [
                  Text(
                    "Name here",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  
                ],
              ),
              Text(""),
              Text(""),
            ],
          )
        ],
      ),
    );
  }
}
