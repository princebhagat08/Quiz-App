import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import '../../const/app_color.dart';
import '../../const/txt_style.dart';
import '../../controller/quiz_controller.dart';

Widget buildOptionButton(
  String text,
  int index, {
  bool isReviewMode = false,
  bool isCorrect = false,
  bool wasSelected = false,
}) {
  final QuizController quizController = Get.put(QuizController());
  return Obx(() {
    Color backgroundColor = AppColor.whiteColor;
    Color borderColor = AppColor.grey;

    if (isReviewMode) {
      if (isCorrect) {
        backgroundColor = Colors.green.withOpacity(0.2);
        borderColor = Colors.green;
      } else if (wasSelected) {
        backgroundColor = Colors.red.withOpacity(0.2);
        borderColor = Colors.red;
      }
    } else if (quizController
            .userAnswers[quizController.currentQuestionIndex.value] ==
        index) {
      backgroundColor = AppColor.primaryColor.withOpacity(0.2);
      borderColor = AppColor.primaryColor;
    }

    return GestureDetector(
      onTap: isReviewMode ? null : () => quizController.selectOption(index),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: backgroundColor,
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Text(
              String.fromCharCode(65 + index), // A, B, C, D...
              style: mediumBoldText,
            ),
            SizedBox(width: 10),
            Expanded(
              child: Text(
                text,
                style: mediumBoldText,
              ),
            ),
            if (isReviewMode && isCorrect)
              Icon(Icons.check_circle, color: Colors.green),
            if (isReviewMode && wasSelected && !isCorrect)
              Icon(Icons.cancel, color: Colors.red),
          ],
        ),
      ),
    );
  });
}
