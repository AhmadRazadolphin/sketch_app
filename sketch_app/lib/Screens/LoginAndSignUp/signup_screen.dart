import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:sketch_app/Screens/LoginAndSignUp/Themes/TopBar.dart';

import '../../ReuseableComponents/app_button.dart';
import '../../ReuseableComponents/app_text_field.dart';
import 'Themes/BodyBar.dart';
import 'Themes/Bottombar.dart';
import 'Themes/MidBodyBar.dart';
import 'login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.blue.shade700,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Stack(
              children: [
                const topBar(),
                const MidBodyBar(),
                const BodyBar(),
                const BottomBar(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 60.0, vertical: 50),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TyperAnimatedText(
                        'Signup',
                        textStyle: const TextStyle(
                          fontSize: 45.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        speed: const Duration(milliseconds: 300),
                      ),
                    ],
                    totalRepeatCount: 100,
                    pause: const Duration(milliseconds: 300),
                    displayFullTextOnTap: true,
                    stopPauseOnTap: true,
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: height / 6,
                    ),
                    const AppTextField(
                        labelText: "Enter the Email",
                        hintText: "Enter the Email"),
                    SizedBox(
                      height: height / 30,
                    ),
                    const AppTextField(
                        labelText: "Enter the first name",
                        hintText: "Enter the first name"),
                    SizedBox(
                      height: height / 30,
                    ),
                    const AppTextField(
                        labelText: "Enter the last name",
                        hintText: "Enter the last name"),
                    SizedBox(
                      height: height / 30,
                    ),
                    const AppTextField(
                        labelText: "Enter the mobile number",
                        hintText: "Enter the mobile number"),
                    SizedBox(
                      height: height / 30,
                    ),
                    const AppTextField(
                        labelText: "Enter the password",
                        hintText: "Enter the password"),
                    SizedBox(
                      height: height / 30,
                    ),
                    const AppTextField(
                        labelText: "Enter the confirm password",
                        hintText: "Enter the confirm password"),
                    SizedBox(
                      height: height / 30,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const LoginScreen()));
                      },
                      child: const AppButton(
                        textButton: 'Login',
                        iconButton: Icons.arrow_forward_rounded,
                        paddingButton: EdgeInsets.only(left: 115),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
