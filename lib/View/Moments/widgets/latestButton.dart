import 'package:faveping/View/widgets/sizebox.dart';
import 'package:faveping/commons/AppColor.dart';
import 'package:flutter/material.dart';

class TrendButton extends StatefulWidget {
  final String trendName;
  final String image;
  final int index;
  
  const TrendButton(
      {super.key,
      required this.trendName,
      required this.index,
      required this.image});

  @override
  State<TrendButton> createState() => _TrendButtonState();
}

class _TrendButtonState extends State<TrendButton> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.44;
    bool isFirst = widget.index == 0;
    bool isLast = widget.index == 1;
    int selectedButtonIndex = 0;

    return InkWell(
      onTap: () {
        setState(() {
          selectedButtonIndex = widget.index;
        });
      },
      child: Container(
          height: 39,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: isFirst ? const Radius.circular(15.0) : Radius.zero,
              bottomLeft: isFirst ? const Radius.circular(15.0) : Radius.zero,
              topRight: isLast ? const Radius.circular(15.0) : Radius.zero,
              bottomRight: isLast ? const Radius.circular(15.0) : Radius.zero,
            ),
            gradient: selectedButtonIndex == widget.index
                ? LinearGradient(
                    colors: [
                      gradient1.withOpacity(0.0),
                      gradient1.withOpacity(0.04)
                    ],
                  )
                : null,

            // color:viewModel. selectedButtonIndex == index ? kcPrimaryColorDark : kcMediumGrey ,
          ),
          child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(widget.image),
                width: 14,
                height: 18,
              ),
             sizeof(5.0, 0.0),
              Text(
                widget.trendName,
                style: TextStyle(
                  color: selectedButtonIndex == widget.index
                      ? gradient1
                      : primary.withOpacity(0.8),
                  fontSize: 12,
                  fontWeight: FontWeight.bold
                ),
              ),
            ],
          ))),
    );
  }
}
