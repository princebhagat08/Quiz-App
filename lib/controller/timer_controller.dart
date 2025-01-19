import 'dart:async';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:quizapp_testline/controller/quiz_controller.dart';
import '../const/app_color.dart';
import '../utils/custom_utils.dart';

class TimerController extends GetxController {
  var remainingTime = 0.obs;
  Timer? _timer;
  int totalTime = 0;

  void initializeTimer(int duration) {
    print("Timer Starts");
    totalTime = duration;
    remainingTime.value = duration;
    startTimer();
  }

  String get timeLeft {
    int minutes = remainingTime.value ~/ 60;
    int seconds = remainingTime.value % 60;
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

  Color getTimerColor() {
    double percentage = remainingTime.value / totalTime;
    if (percentage <= 0.25) return Colors.red;
    if (percentage <= 0.5) return Colors.orange;
    return AppColor.primaryColor;
  }

  void startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (remainingTime.value > 0) {
        remainingTime.value--;
      } else {
        timer.cancel();
        onTimerComplete();
      }
    });
  }

  void stopTimer() {
    _timer?.cancel();
  }

  void onTimerComplete() {
    Get.defaultDialog(
      title: 'Time\'s Up!',
      middleText: 'Your time has ended. Submitting the test...',
      barrierDismissible: false,
      onConfirm: () {
        Get.back();
        // Get the QuizController instance and submit the test
        final quizController = Get.find<QuizController>();
        quizController.submitTest();
      },
    );
  }

  @override
  void onClose() {
    _timer?.cancel();
    super.onClose();
  }
}
