import 'dart:math' as math;

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:sketch_app/Screens/LoginAndSignUp/Themes/TopBar.dart';
import 'package:sketch_app/Screens/LoginAndSignUp/signup_screen.dart';
import 'package:sketch_app/Screens/home_screen.dart';

import '../../ReuseableComponents/app_button.dart';
import '../../ReuseableComponents/app_text_field.dart';
import 'Themes/BodyBar.dart';
import 'Themes/Bottombar.dart';
import 'Themes/MidBodyBar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    scrollBehavior:
    const MaterialScrollBehavior().copyWith(scrollbars: false);
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.blue.shade700,
        body: SafeArea(
          child: Stack(
            children: [
              const topBar(),
              const MidBodyBar(),
              const BodyBar(),
              const BottomBar(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 60.0, vertical: 50),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText(
                      'Login',
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
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: height / 6.7,
                    ),
                    const AppTextField(
                        labelText: "Enter the Email",
                        hintText: "Enter the Email"),
                    SizedBox(
                      height: height / 30,
                    ),
                    const AppTextField(
                        labelText: "Enter the Password",
                        hintText: "Enter the Password"),
                    SizedBox(
                      height: height / 100,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Stack(
                              children: const [
                                HomeScreen(),
                              ],
                            ),
                          ),
                        );
                      },
                      child: const AppButton(
                          textButton: 'Home',
                          iconButton: Icons.arrow_forward_rounded,
                          paddingButton: EdgeInsets.only(left: 108)),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const SignupScreen()));
                      },
                      child: const AppButton(
                          textButton: 'Signup',
                          iconButton: Icons.arrow_forward_rounded,
                          paddingButton: EdgeInsets.only(left: 98)),
                    ),
                    Transform.translate(
                      offset: const Offset(-60, 60),
                      child: Transform.rotate(
                        angle: -math.pi / 3.45,
                        child: const Text(
                          "Login via",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(-20, 50),
                      child: Transform.rotate(
                        angle: -math.pi / 3.45,
                        child: const Text(
                          "Mobile Number",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(53, -70),
                      child: Transform.rotate(
                        angle: -math.pi / 10,
                        child: Image.asset(
                          "images/phone.png",
                          height: 25,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height / 7,
                    ),
                    Transform.translate(
                      offset: const Offset(10, -10),
                      child: Transform.rotate(
                        angle: -math.pi / 3.45,
                        child: const Text(
                          "Facebook",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(70, -110),
                      child: Transform.rotate(
                        angle: -math.pi / 3.45,
                        child: Image.asset(
                          "images/FB.png.png",
                          height: 30,
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(50, -60),
                      child: Transform.rotate(
                        angle: -math.pi / 3.45,
                        child: const Text(
                          "Google",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(100, -140),
                      child: Transform.rotate(
                        angle: -math.pi / 3.45,
                        child: Image.asset(
                          "images/google_logo.png",
                          height: 25,
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(100, -110),
                      child: Transform.rotate(
                        angle: -math.pi / 3.45,
                        child: const Text(
                          "IG",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(130, -170),
                      child: Transform.rotate(
                        angle: -math.pi / 3.45,
                        child: Image.asset(
                          "images/IG.png.png",
                          height: 25,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
