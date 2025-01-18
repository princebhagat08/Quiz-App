
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizapp_testline/controller/quiz_controller.dart';
import 'package:quizapp_testline/screens/quiz_screen.dart';

import '../controller/timer_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child:
        TextButton(onPressed: (){Get.to(()=>QuizScreen());}, child: Text("Quiz"))
        ,),
    );
  }
}
