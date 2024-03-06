import 'package:flutter/material.dart';


class FaveSearch extends StatefulWidget {
  const FaveSearch({super.key});

  @override
  State<FaveSearch> createState() => _FaveSearchState();
}

class _FaveSearchState extends State<FaveSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Center(child: Text("search"),)
      ],),
    );
  }
}