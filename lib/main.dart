import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:quizapp_testline/screens/home_screen.dart';
import 'package:quizapp_testline/screens/leaderboard.dart';
import 'package:quizapp_testline/screens/onBording_screen/onBording_screen.dart';
import 'package:quizapp_testline/screens/quiz_screen.dart';
import 'package:quizapp_testline/screens/splashscreen.dart';
import 'package:quizapp_testline/screens/summary_screen.dart';

import 'const/app_color.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((_)=> runApp(const MyApp()));

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Quiz App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        scaffoldBackgroundColor: AppColor.whiteColor,
      ),
      home: Splashscreen(),
    );
  }
}

