import 'package:country_list_pick/country_list_pick.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../res/commons/AppColors/AppColor.dart';

Widget buildtextfield(controller, hint, icon) {
  return TextFormField(
    validator: ((txt) {
      if (txt == null || txt.isEmpty) {
        return "textfielderror".tr;
      } else {
        return null;
      }
    }),
    controller: controller,
    style: const TextStyle(color: Colors.black54),
    decoration: InputDecoration(
        hintStyle: const TextStyle(color: Colors.black26),
        labelStyle: const TextStyle(color: Colors.black26),
        prefixIcon: Icon(
          icon,
          color: AppColors.primaryPink,
        ),
        label: Text(hint),
        // border: const UnderlineInputBorder(),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          // borderSide: BorderSide(color: Colors.green)
        ),
        hintText: hint),
  );
}

Widget buildtextfieldComment(controller, hint, icon) {
  return TextFormField(
    validator: ((txt) {
      if (txt == null || txt.isEmpty) {
        return "textfielderror".tr;
      } else {
        return null;
      }
    }),
    controller: controller,
    style: const TextStyle(color: Colors.black54),
    decoration: InputDecoration(
        hintStyle: const TextStyle(color: Colors.black26),
        labelStyle: const TextStyle(color: Colors.black26),
        suffixIcon: Icon(
          icon,
          color: AppColors.primaryPink,
        ),
        label: Text(hint),
        // border: const UnderlineInputBorder(),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          // borderSide: BorderSide(color: Colors.green)
        ),
        hintText: hint),
  );
}

Widget buildtextfieldKYC(controller, hint, icon) {
  return TextFormField(
    validator: ((txt) {
      if (txt == null || txt.isEmpty) {
        return "textfielderror".tr;
      } else {
        return null;
      }
    }),
    controller: controller,
    style: const TextStyle(color: Colors.black54),
    decoration: InputDecoration(
        hintStyle: const TextStyle(color: Colors.black26),
        labelStyle: const TextStyle(color: Colors.black26),
        prefixIcon: Icon(
          icon,
          color: AppColors.primaryPink,
        ),
        label: Text(hint),
        border: const OutlineInputBorder(),
        // border: OutlineInputBorder(
        //     borderRadius: BorderRadius.circular(50),
        //     borderSide: BorderSide(color: Colors.green)),
        hintText: hint),
  );
}

Widget buildphonetextfield(controller, hint, icon) {
  return TextFormField(
    validator: ((txt) {
      if (txt == null || txt.isEmpty) {
        return "phone_number".tr;
      } else {
        return null;
      }
    }),
    controller: controller,
    keyboardType: TextInputType.phone,
    style: const TextStyle(color: Colors.black54),
    decoration: InputDecoration(
        hintStyle: const TextStyle(color: Colors.black26),
        labelStyle: const TextStyle(color: Colors.black26),
        prefixIcon: Icon(
          icon,
          color: AppColors.primaryPink,
        ),
        label: Text(hint),
        border: const UnderlineInputBorder(),
        // border: OutlineInputBorder(
        //     borderRadius: BorderRadius.circular(50),
        //     borderSide: BorderSide(color: Colors.green)),
        hintText: hint),
  );
}

Widget buildphonetextfieldKYC(controller, hint, icon) {
  return TextFormField(
    validator: ((txt) {
      if (txt == null || txt.isEmpty) {
        return "phone_number".tr;
      } else {
        return null;
      }
    }),
    controller: controller,
    keyboardType: TextInputType.phone,
    style: const TextStyle(color: Colors.black54),
    decoration: InputDecoration(
        hintStyle: const TextStyle(color: Colors.black26),
        labelStyle: const TextStyle(color: Colors.black26),
        prefixIcon: Icon(
          icon,
          color: AppColors.primaryPink,
        ),
        label: Text(hint),
        border: const OutlineInputBorder(),
        // border: OutlineInputBorder(
        //     borderRadius: BorderRadius.circular(50),
        //     borderSide: BorderSide(color: Colors.green)),
        hintText: hint),
  );
}

Widget buildrefferaltextfield(controller, hint, icon) {
  return TextFormField(
    controller: controller,
    // keyboardType: TextInputType.phone,
    style: const TextStyle(color: Colors.black54),
    decoration: InputDecoration(
        hintStyle: const TextStyle(color: Colors.black26),
        labelStyle: const TextStyle(color: Colors.black26),
        prefixIcon: Icon(
          icon,
          color: AppColors.primaryPink,
        ),
        border: const UnderlineInputBorder(),
        // border: OutlineInputBorder(
        //     borderRadius: BorderRadius.circular(50),
        //     borderSide: BorderSide(color: Colors.green)),
        label: Text(hint),
        hintText: hint),
  );
}

Widget buildEmailfield2(TextEditingController emailcontroller) {
  String? validateEmail(String? value) {
    String pattern =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?)*$";
    RegExp regex = RegExp(pattern);
    if (value == null || value.isEmpty || !regex.hasMatch(value)) {
      return 'valid_email'.tr;
    } else {
      return null;
    }
  }

  return TextFormField(
    validator: (value) => validateEmail(value),
    // obscureText: true,
    controller: emailcontroller,
    // cursorColor: pink,
    keyboardType: TextInputType.emailAddress,
    style: const TextStyle(color: Colors.black54),
    decoration: InputDecoration(
        hintStyle: const TextStyle(color: Colors.black26),
        labelStyle: const TextStyle(color: Colors.black26),
        prefixIcon: const Icon(
          Icons.alternate_email,
          color: AppColors.primaryPink,
        ),
        border: const UnderlineInputBorder(),
        // border: OutlineInputBorder(
        //     borderRadius: BorderRadius.circular(50),
        //     borderSide: BorderSide(color: Colors.pink)),
        // focusedBorder: OutlineInputBorder(
        //   borderSide: BorderSide(color: green),
        // ),
        label: Text("email_hint".tr),
        hintText: "email_hint".tr),
  );
}

Widget buildEmailfield2KYC(TextEditingController emailcontroller) {
  String? validateEmail(String? value) {
    String pattern =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?)*$";
    RegExp regex = RegExp(pattern);
    if (value == null || value.isEmpty || !regex.hasMatch(value)) {
      return 'valid_email'.tr;
    } else {
      return null;
    }
  }

  return TextFormField(
    validator: (value) => validateEmail(value),
    // obscureText: true,
    controller: emailcontroller,
    // cursorColor: pink,
    keyboardType: TextInputType.emailAddress,
    style: const TextStyle(color: Colors.black54),
    decoration: InputDecoration(
        hintStyle: const TextStyle(color: Colors.black26),
        labelStyle: const TextStyle(color: Colors.black26),
        prefixIcon: const Icon(
          Icons.alternate_email,
          color: AppColors.primaryPink,
        ),
        border: const OutlineInputBorder(),
        // border: OutlineInputBorder(
        //     borderRadius: BorderRadius.circular(50),
        //     borderSide: BorderSide(color: Colors.pink)),
        // focusedBorder: OutlineInputBorder(
        //   borderSide: BorderSide(color: green),
        // ),
        label: Text("email_hint".tr),
        hintText: "email_hint".tr),
  );
}

Widget buildCountryPick(controller) {
  return TextFormField(
    controller: controller,
    style: const TextStyle(color: Colors.black54),
    decoration: InputDecoration(
      hintStyle: const TextStyle(color: Colors.black26),
      labelStyle: const TextStyle(color: Colors.black26),
      labelText: 'Country',
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: const BorderSide(color: Colors.grey),
      ),
      prefixIcon: const Icon(Icons.flag, color: Colors.grey),
      suffixIcon: CountryListPick(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: const Text('Choisir un pays'),
          ),

          // if you need custome picker use this
          // pickerBuilder: (context, CountryCode countryCode){
          //   return Row(
          //     children: [
          //       Image.asset(
          //         countryCode.flagUri,
          //         package: 'country_list_pick',
          //       ),
          //       Text(countryCode.code),
          //       Text(countryCode.dialCode),
          //     ],
          //   );
          // },

          // To disable option set to false
          theme: CountryTheme(
            isShowFlag: true,
            isShowTitle: true,
            isShowCode: true,
            isDownIcon: true,
            showEnglishName: true,
          ),
          // Set default value
          initialSelection: '+62',
          // or
          // initialSelection: 'US'
          onChanged: (code) {
            print(code);
            // print(code.code);
            // print(code.dialCode);
            // print(code.flagUri);
          },
          // Whether to allow the widget to set a custom UI overlay
          useUiOverlay: true,
          // Whether the country list should be wrapped in a SafeArea
          useSafeArea: false),
    ),
  );
}

Widget buildCountryPicfield(hint, ontap) {
  return Padding(
    padding: const EdgeInsets.only(left: 0.0, right: 0.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: ontap,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                gradient: LinearGradient(colors: [
                  Color(0xffFFFFFF).withOpacity(0.2),
                  Color(0xffFFFFFF).withOpacity(0.1),
                ])),
            child: ListTile(
              title: Text(
                "$hint",
                style: TextStyle(color: Color(0xffA4A4A4)),
              ),
              trailing: Icon(
                Icons.arrow_drop_down_circle_outlined,
                color: AppColors.primaryPink,
              ),
              leading: Image(
                image: AssetImage("assets/Icons/country.png"),
                height: 20,
                width: 20,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
