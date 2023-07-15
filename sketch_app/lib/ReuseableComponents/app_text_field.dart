import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final TextInputType? textInputType;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  // final TextEditingController controller;
  const AppTextField(
      {super.key,
      required this.labelText,
      required this.hintText,
      // required this.controller,
      this.suffixIcon,
      this.textInputType,
      this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 60,
        child: TextFormField(
          // controller: controller,
          cursorColor: Colors.black,
          keyboardType: textInputType,
          decoration: InputDecoration(
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
            labelText: labelText,
            hintText: hintText,
            labelStyle: const TextStyle(color: Colors.blue),
            hintStyle: const TextStyle(color: Colors.grey),
            filled: true,
            fillColor: const Color(0xFFEFF0F7),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(width: 1.0, color: Colors.blue),
            ),
            // disabledBorder: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(12),
            //   borderSide: const BorderSide(width: 1.0, color: primaryColor),
            // ),
            // errorBorder: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(12),
            //   borderSide: const BorderSide(width: 1.0, color: primaryColor),
            // ),
            // focusedErrorBorder: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(12),
            //   borderSide: const BorderSide(width: 1.0, color: primaryColor),
            // ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(width: 1.0, color: Colors.blue),
            ),
            // border: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(12),
            //   borderSide: const BorderSide(width: 1.0, color: primaryColor),
            // )
          ),
        ),
      ),
    );
  }
}
