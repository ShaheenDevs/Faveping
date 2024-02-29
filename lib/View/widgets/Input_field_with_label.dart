import 'package:flutter/material.dart';

class BuildInputFieldWithLabel extends StatelessWidget {
  final String label;
  final String? hintText;
  final bool isDropDown;

  const BuildInputFieldWithLabel(
      {required this.label, this.hintText, this.isDropDown = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Baloo',
            color: Colors.grey,
          ),
        ),
        SizedBox(height: 2),
        Container(
          height: 42, // Set the height of the container
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade200, width: 1.0),
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: isDropDown
              ? DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    hintText: hintText,
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    hintStyle: TextStyle(
                      // Set hint text style to match label text style
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Baloo',
                      color: Colors.grey,
                    ),
                  ),
                  icon: Icon(Icons.arrow_drop_down, color: Color(0xFFB605AE)),
                  items: ['Male', 'Female', 'Other'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (value) {},
                )
              : TextField(
                  decoration: InputDecoration(
                    hintText: hintText,
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    hintStyle: TextStyle(
                      // Set hint text style to match label text style
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Baloo',
                      color: Colors.grey,
                    ),
                  ),
                ),
        ),
      ],
    );
  }
}
