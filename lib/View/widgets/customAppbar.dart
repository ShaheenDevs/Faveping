import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final double height;
  final VoidCallback? onPingPressed;
  final VoidCallback? onFavePressed;

  const CustomAppBar({
    Key? key,
    this.height = kToolbarHeight,
    this.onPingPressed,
    this.onFavePressed,
  }) : super(key: key);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(height);
}

class _CustomAppBarState extends State<CustomAppBar> {
  bool _isPingActive = true;
  bool _isFaveActive = false;

  @override
  Widget build(BuildContext context) {
    double padding = MediaQuery.of(context).size.width * 0.06;
    double backButtonPadding = padding; // Adjust the padding for the back button

    return Container(
      color: Colors.white10,
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: backButtonPadding, // Adjusted padding for the left side including the back button
        right: padding,
      ),
      child: Row(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                color: Color(0xFFB605AE),
              ),
            ),
          ),
          if (widget.onPingPressed != null && widget.onFavePressed != null)
            Row(
              children: [
                _CustomButton(
                  onPressed: () {
                    setState(() {
                      _isPingActive = true;
                      _isFaveActive = false;
                    });
                    widget.onPingPressed!();
                  },
                  text: 'Become a Ping!',
                  isActive: _isPingActive,
                  isRightCurved: false, // Right side of ping button should be straight
                ),
                _CustomButton(
                  onPressed: () {
                    setState(() {
                      _isPingActive = false;
                      _isFaveActive = true;
                    });
                    widget.onFavePressed!();
                  },
                  text: 'Become a Fave!',
                  isActive: _isFaveActive,
                  isLeftCurved: false, // Left side of fave button should be straight
                ),
              ],
            ),
          Spacer(), // Use Spacer widget to fill available space
        ],
      ),
    );
  }
}

class _CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final bool isActive;
  final bool isLeftCurved;
  final bool isRightCurved;

  const _CustomButton({
    Key? key,
    required this.onPressed,
    required this.text,
    required this.isActive,
    this.isLeftCurved = true,
    this.isRightCurved = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color buttonColor = isActive ? Color(0xFFEEDDF2) : Colors.white;
    Color borderColor = isActive ? Color(0xFFB605AE) : Colors.grey;
    Color textColor = isActive ? Color(0xFFB605AE) : Colors.black;
    BorderRadius borderRadius = BorderRadius.horizontal(
      left: isLeftCurved ? Radius.circular(5) : Radius.zero,
      right: isRightCurved ? Radius.circular(5) : Radius.zero,
    );

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: buttonColor,
          border: Border.all(
            color: borderColor,
          ),
          borderRadius: borderRadius,
        ),
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
          ),
        ),
      ),
    );
  }
}
