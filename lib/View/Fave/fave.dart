import 'package:flutter/material.dart';

import '../../View_widgets/card_widget.dart';


class FavePage extends StatefulWidget {
  const FavePage({super.key});

  @override
  State<FavePage> createState() => _FavePageState();
}

class _FavePageState extends State<FavePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          faveCard(),
        ],
      ),
    );
  }
}