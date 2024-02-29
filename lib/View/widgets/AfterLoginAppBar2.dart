import 'package:flutter/material.dart';

class appBarUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(kToolbarHeight + 150.0), // Adjust the height as needed
      child: SliverAppBar(
        pinned: true,
        expandedHeight: 100.0,
        flexibleSpace: FlexibleSpaceBar(
          title: Text('Moments'),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color(0x00B605AE), // 0% opacity
                  Color(0x29B605AE), // 4% opacity
                ],
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Button for "Top"
                _buildGradientButton('Top'),
                // Button for "Latest"
                _buildTextButton('Latest'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildGradientButton(String title) {
    return ElevatedButton(
      onPressed: () {
        // Placeholder for button action
      },
      style: ElevatedButton.styleFrom(
        primary: Colors.transparent,
        elevation: 0,
        padding: EdgeInsets.symmetric(horizontal: 20.0),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildTextButton(String title) {
    return TextButton(
      onPressed: () {
        // Placeholder for button action
      },
      style: TextButton.styleFrom(
        primary: Colors.black,
      ),
      child: Text(title),
    );
  }
}