import 'package:flutter/material.dart';

class SenderBubbleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(size.width, 0);
    path.lineTo(size.width, size.height - 20); // Right edge (skip bottom-right corner)
    path.quadraticBezierTo(size.width, size.height, size.width - 20, size.height); // Bottom-right corner
    path.lineTo(0, size.height); // Bottom edge
    path.lineTo(0, 0); // Left edge
    path.close(); // Close the path
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class ReceiverBubbleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(size.width, 0);
    path.lineTo(size.width, size.height - 20); // Right edge (skip bottom-right corner)
    path.quadraticBezierTo(size.width, size.height, size.width - 20, size.height); // Bottom-right corner
    path.lineTo(0, size.height); // Bottom edge
    path.lineTo(0, 0); // Left edge
    path.close(); // Close the path
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
