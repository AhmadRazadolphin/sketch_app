import 'package:flutter/material.dart';
import 'package:sketch_app/Screens/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // scrollBehavior:
      //     const MaterialScrollBehavior().copyWith(scrollbars: false),
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const BlockDemo(),
      home: const SplashScreen(),
    );

    //   BlocProvider(
    //   // create: (context) => InternetBloc(),
    //   create: (context) => CinternetCubit(),
    //
    //   child: MaterialApp(
    //     title: 'Flutter Demo',
    //     theme: ThemeData(
    //       primarySwatch: Colors.blue,
    //     ),
    //     // home: const BlockDemo(),
    //     home: const CubitDemo(),
    //   ),
    // );
  }
}
