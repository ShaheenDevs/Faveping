import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class BuildIntlPhoneField extends StatelessWidget {
  final String? labelText;

  const BuildIntlPhoneField({Key? key, this.labelText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (labelText != null) ...[
          Text(
            labelText!,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Baloo',
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 2),
        ],
        Container(
          height: 42,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade200, width: 1.0),
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,),
            child: IntlPhoneField(
              disableLengthCheck: true,
              decoration: const InputDecoration(
                hintText: 'Enter Number',
                border: InputBorder.none,
                hintStyle: TextStyle( // Set hint text style
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Baloo',
                  color: Colors.grey,
                ),
              ),
              initialCountryCode: 'GB',
              onChanged: (phone) {
                // Handle phone number changes
              },
            ),
          ),
        ),
      ],
    );
  }
}
