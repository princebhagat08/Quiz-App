import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import '../../const/app_color.dart';
import '../../controller/quiz_controller.dart';

Widget buildOptionButton(String text, int index, {bool isReviewing = false}) {
  final QuizController quizController = Get.put(QuizController());
  return Obx(() {
    final isSelected = quizController.isOptionSelected(index);
    final isCorrect = quizController.isCorrectOption(index);

    Color getBackgroundColor() {
      if (isReviewing) {
        if (isCorrect) return Colors.green.withOpacity(0.1);
        if (isSelected) return Colors.red.withOpacity(0.1);
      }
      if (isSelected) return AppColor.primaryColor.withOpacity(0.1);
      return Colors.white;
    }

    Color getBorderColor() {
      if (isReviewing) {
        if (isCorrect) return Colors.green;
        if (isSelected) return Colors.red;
      }
      if (isSelected) return AppColor.primaryColor;
      return AppColor.grey.withOpacity(0.8);
    }

    Widget? getIcon() {
      if (!isReviewing) return null;
      if (isCorrect) {
        return const Icon(Icons.check_circle, color: Colors.green);
      }
      if (isSelected) {
        return const Icon(Icons.cancel, color: Colors.red);
      }
      return null;
    }

    return Container(
      width: double.infinity,
      height: 75,
      child: ElevatedButton(
        onPressed:
            isReviewing ? null : () => quizController.selectOption(index),
        style: ElevatedButton.styleFrom(
          backgroundColor: getBackgroundColor(),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
            side: BorderSide(
              color: getBorderColor(),
              width: 1,
            ),
          ),
          elevation: 0,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  text,
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              if (getIcon() != null) getIcon()!,
            ],
          ),
        ),
      ),
    );
  });
}
