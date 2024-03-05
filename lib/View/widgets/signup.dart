import 'package:faveping/View/widgets/AfterLoginAppBar.dart';
import 'package:flutter/material.dart';
import 'Input_field_with_label.dart';
import 'Photo_picker.dart';
import 'Phone_Number.dart';
import 'DOB_picker.dart';
import 'Custom_button.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  String? pickedFileName; // Variable to store the picked file name
  bool agreedToTerms = false;

  @override
  Widget build(BuildContext context) {
    double padding = 25.0;

    return Scaffold(
      appBar: const CustomAppBar(title: '',
        // onPingPressed: () {
        //   // Handle sign1 button press
        // },
        // onFavePressed: () {
        //   // Handle sign2 button press
        // },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: padding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16),
                    const BuildInputFieldWithLabel(
                      label: 'Name',
                      hintText: 'Enter Name',
                    ),
                    const SizedBox(height: 8),
                    const BuildIntlPhoneField(labelText: 'Phone Number',),
                    const SizedBox(height: 8),
                    const BuildInputFieldWithLabel(
                      label: 'Username',
                      hintText: 'Enter Username',
                    ),
                    const SizedBox(height: 8),
                    const BuildInputFieldWithLabel(
                      label: 'Email',
                      hintText: 'Enter Email',
                    ),
                    const SizedBox(height: 8),
                    const BuildInputFieldWithLabel(
                      label: 'Tagline',
                      hintText: 'Enter Tagline',
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Expanded(
                          child: BuildInputFieldWithLabel(
                            label: 'Gender',
                            hintText: 'Select Gender',
                            isDropDown: true,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: DOBPicker(
                            // Use the DOBPicker widget
                            onDateSelected: (DateTime selectedDate) {
                              // Handle the selected date here if needed
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const BuildPhotoPicker(
                      labelText: 'Self Photo',
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0),
                          child: Radio<bool>(
                            value: true,
                            activeColor: const Color(0xFFB605AE),
                            groupValue: agreedToTerms,
                            onChanged: (bool? value) {
                              setState(() {
                                agreedToTerms = value!;
                              });
                            },
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              agreedToTerms = !agreedToTerms;
                            });
                          },
                          child: const Row(
                            children: [
                              Text(
                                "I agree to ",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text(
                                "Terms & Services",
                                style: TextStyle(
                                    color: Color(0xFFB605AE),fontWeight: FontWeight.bold, fontFamily: 'Baloo'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white, // Add desired shade
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(6),
                topRight: Radius.circular(6),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), // Add shadow color
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            padding: EdgeInsets.fromLTRB(padding, 10, padding, 10), // Add padding above and below CustomButton
            child: CustomButton(
              text: 'Sign-up',
              onPressed: () {
                // Add login functionality
              },
            ),
          ),
        ],
      ),
    );
  }
}
