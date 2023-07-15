import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sketch_app/Screens/LoginAndSignUp/login_screen.dart';

import '../ReuseableComponents/app_button.dart';
import 'LoginAndSignUp/Themes/BodyBar.dart';
import 'LoginAndSignUp/Themes/Bottombar.dart';
import 'LoginAndSignUp/Themes/MidBodyBar.dart';
import 'LoginAndSignUp/Themes/TopBar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
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
                    const EdgeInsets.symmetric(horizontal: 60.0, vertical: 100),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText(
                      'Welcome to\n   My App.',
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
                    height: height / 2.15,
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
        ));
  }
}
