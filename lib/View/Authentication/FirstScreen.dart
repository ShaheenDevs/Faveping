
import 'package:faveping/View/bottomNavigation/bottomNavigation.dart';
import 'package:faveping/View/widgets/Custom_button.dart';
import 'package:faveping/View/widgets/Phone_Number.dart';
import 'package:faveping/View/widgets/signup.dart';
import 'package:faveping/commons/appImages.dart';
import 'package:flutter/material.dart';
// import 'package:faveping/UserAccount/AfterLogin.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.2),
                Image.asset(
                faveImage,
                  height: 100, // Adjust the height as needed
                ),
                const SizedBox(height: 50),
                const Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Baloo', // Assuming you have Baloo as a font
                  ),
                ),
                const Text(
                  'Enter your phone number to continue',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Baloo', // Assuming you have Baloo as a font
                  ),
                ),
                const SizedBox(height: 15),
                const BuildIntlPhoneField(),  // phone number widget is called 
                const SizedBox(height: 50),
                CustomButton( // custom button (Login) widget is called
                  text: 'Login',
                  onPressed: () {
                    // Add navigation to home screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BottomBar()),
                    );
                  },
                ),
                const SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    // Add navigation to registration screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Signup()),
                    );
                  },
                  child: RichText(
                    text: const TextSpan(
                      text: "Don't have an account? ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Baloo',
                        fontWeight: FontWeight.bold
                      ),
                      children: [
                        TextSpan(
                          text: "Sign-up",
                          style: TextStyle(
                            color: Color(0xFFB605AE),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
