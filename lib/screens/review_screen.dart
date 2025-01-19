import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizapp_testline/models/quiz_data_model.dart';
import 'package:quizapp_testline/screens/custom_widgets/option_widget.dart';
import '../const/txt_style.dart';
import '../const/app_color.dart';
import '../controller/timer_controller.dart';
import '../controller/quiz_controller.dart';
import 'custom_widgets/bubble.dart';
import 'custom_widgets/custom_button.dart';

class ReviewScreen extends StatelessWidget {
  ReviewScreen({Key? key}) : super(key: key);

  final QuizController quizController = Get.find<QuizController>();

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: Stack(
        children: [
          // Purple container
          Positioned(
            left: 10,
            right: 10,
            top: 25,
            child: Container(
              height: mq.height * 0.3,
              decoration: BoxDecoration(
                color: AppColor.primaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                  topRight: Radius.circular(25),
                  topLeft: Radius.circular(25),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 10,
                    right: 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_back,
                              size: 30, color: AppColor.whiteColor),
                          onPressed: () {
                            // Handle back action
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.menu,
                              size: 30, color: AppColor.whiteColor),
                          onPressed: () {
                            // Handle menu action
                          },
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: -30,
                    left: 70,
                    child: Bubble(
                        size: 80,
                        color: AppColor.whiteColor.withOpacity(0.2)),
                  ),
                  Positioned(
                    top: 50,
                    right: -30,
                    child: Bubble(
                        size: 100,
                        color: AppColor.whiteColor.withOpacity(0.2)),
                  ),
                  Positioned(
                    bottom: 40,
                    left: -20,
                    child: Bubble(
                        size: 70,
                        color: AppColor.whiteColor.withOpacity(0.2)),
                  ),
                ],
              ),
            ),
          ),

          // Question Container with timer
          Positioned(
            left: 25,
            right: 25,
            top: mq.height * 0.16,
            child: Container(
              padding: EdgeInsets.all(16),
              constraints: BoxConstraints(
                minHeight: mq.height * 0.15,
                maxHeight: mq.height *
                    0.28,
              ),
              decoration: BoxDecoration(
                color: AppColor.whiteColor,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: AppColor.grey.withOpacity(0.9),
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: SingleChildScrollView(
                child: Obx(() {
                  if (quizController.isLoading.value) {
                    return Center(child: CircularProgressIndicator());
                  }
                  if (quizController.errorMessage.value.isNotEmpty) {
                    return Center(
                      child: Text(quizController.errorMessage.value,
                          style: TextStyle(color: Colors.red)),
                    );
                  }
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 30),
                      Text("Question: ${quizController.questionProgress}",
                          style: largeBoldColorText),
                      SizedBox(height: 15),
                      Text(
                        quizController.getQuestionDescription(),
                        textAlign: TextAlign.center,
                        style: largeBoldText,
                      ),
                      SizedBox(height: 20),
                    ],
                  );
                }),
              ),
            ),
          ),

          // Options
          Positioned(
            top: mq.height *
                0.45,
            left: 10,
            right: 10,
            bottom: 60, // Keep space for bottom buttons
            child: SingleChildScrollView(
              child: Obx(() {
                if (quizController.isLoading.value) {
                  return SizedBox.shrink();
                }

                return Column(
                  children: [
                    Text('Scroll down for detailed solution',
                        style: mediumBoldColorText),
                    ...List.generate(
                      quizController.currentOptions?.length ?? 0,
                      (index) => Column(
                        children: [
                          buildOptionButton(
                              quizController.getOptionDescription(index),
                              index,
                              isReviewing: true),
                          SizedBox(height: 12),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(quizController.currentQuestion!.detailedSolution!, style: xLargeText, textAlign: TextAlign.justify,),
                    ),
                  ],
                );
              }),
            ),
          ),

          // Next and Previous Buttons at the bottom
          Positioned(
            bottom: 10,
            left: 10,
            right: 10,
            child: Obx(() {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildButton(
                    "Previous",
                    enabled: quizController.canMoveToPrevious(),
                    onPressed: quizController.canMoveToPrevious()
                        ? () => quizController.previousQuestion()
                        : null,
                    width: 150,
                  ),
                  buildButton(
                    quizController.isLastQuestion ? "OK" : "Next",
                    enabled: !quizController.isLoading.value,
                    onPressed: () {
                      quizController.isLastQuestion
                          ? Get.back()
                          : quizController.nextQuestion();
                    },
                    width: 150,
                  ),
                ],
              );
            }),
          ),
        ],
      ),
    );
  }

  // @override
  // void dispose() {
  //   quizController.exitReviewMode();
  //   super.dispose();
  // }
}
