import 'package:faveping/View_widgets/card_widget.dart';
import 'package:flutter/material.dart';


class MomentsPage extends StatefulWidget {
  const MomentsPage({super.key});

  @override
  State<MomentsPage> createState() => _MomentsPageState();
}

class _MomentsPageState extends State<MomentsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
      children: [
        momentCard()
      ],
      ),
    );
  }
}