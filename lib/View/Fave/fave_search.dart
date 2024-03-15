import 'package:flutter/material.dart';

import '../../View_widgets/appbar.dart';
import '../../View_widgets/my_textfield.dart';

class FaveSearch extends StatefulWidget {
  const FaveSearch({super.key});

  @override
  State<FaveSearch> createState() => _FaveSearchState();
}

class _FaveSearchState extends State<FaveSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Search your fave",
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(
              height: 50,
              child: buildtextfieldSearch(
                  TextEditingController(), "Search Fave", Icons.search),
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
