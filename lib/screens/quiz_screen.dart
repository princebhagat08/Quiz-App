import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizapp_testline/screens/custom_widgets/option_widget.dart';
import 'package:quizapp_testline/screens/home_screen.dart';
import 'package:quizapp_testline/utils/custom_utils.dart';
import '../const/txt_style.dart';
import '../const/app_color.dart';
import '../controller/timer_controller.dart';
import '../controller/quiz_controller.dart';
import 'custom_widgets/bubble.dart';
import 'custom_widgets/custom_button.dart';

class QuizScreen extends StatelessWidget {
  QuizScreen({Key? key}) : super(key: key);

  final TimerController timerController = Get.put(TimerController());
  final QuizController quizController = Get.put(QuizController());


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
                           showCustomDialog('Alert!!', 'Are you sure you want to leave the quiz?', AppColor.primaryColor,
                               [
                                 ElevatedButton(
                                   onPressed: () {
                                     Get.back();
                                   },
                                   style: ElevatedButton.styleFrom(
                                     backgroundColor: Colors.redAccent,
                                     foregroundColor: Colors.white, // Text color
                                     padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                     shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(10),
                                     ),
                                     shadowColor: Colors.red.withOpacity(0.5),
                                     elevation: 5,
                                   ),
                                   child: Text(
                                     'No',
                                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                   ),
                                 ),
                                 ElevatedButton(
                                   onPressed: () {
                                     Get.off(() {HomeScreen();},transition: Transition.fadeIn );
                                     quizController.userAnswers.clear();
                                     Get.delete<QuizController>(force: true);

                                   },
                                   style: ElevatedButton.styleFrom(
                                     backgroundColor: Colors.grey[300],
                                     foregroundColor: Colors.black, // Text color
                                     padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                     shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(10),
                                     ),
                                   ),
                                   child: Text(
                                     'Yes',
                                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                   ),
                                 ),

                               ]
                           );
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
                        size: 80, color: AppColor.whiteColor.withOpacity(0.2)),
                  ),
                  Positioned(
                    top: 50,
                    right: -30,
                    child: Bubble(
                        size: 100, color: AppColor.whiteColor.withOpacity(0.2)),
                  ),
                  Positioned(
                    bottom: 40,
                    left: -20,
                    child: Bubble(
                        size: 70, color: AppColor.whiteColor.withOpacity(0.2)),
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

          // Timer Widget
          Positioned(
            top: mq.height * 0.10,
            left: mq.width * 0.4,
            child: Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                color: AppColor.whiteColor,
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    color: AppColor.grey.withOpacity(0.3),
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Obx(() {
                final remainingTime = timerController.remainingTime.value;
                final progress = remainingTime / timerController.totalTime;
                if(quizController.isLoading.value){
                  return SizedBox.shrink();
                }
                return Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: CircularProgressIndicator(
                        value: progress,
                        color: timerController.getTimerColor(),
                        strokeWidth: 6,
                      ),
                    ),
                    Text(
                      timerController.timeLeft,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: timerController.getTimerColor(),
                      ),
                    ),
                  ],
                );
              }),
            ),
          ),

          // Options
          Positioned(
            top: mq.height *
                0.45,
            left: 10,
            right: 10,
            bottom: 60,

            child: SingleChildScrollView(
              child: Obx(() {
                if (quizController.isLoading.value) {
                  return SizedBox.shrink();
                }

                return Column(
                  children: [
                    ...List.generate(
                      quizController.currentOptions?.length ?? 0,
                      (index) => Column(
                        children: [

                        buildOptionButton(
                              quizController.getOptionDescription(index),
                              index),
                          SizedBox(height: 12),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
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
                    quizController.isLastQuestion ? "Submit" : "Next",
                    enabled: !quizController.isLoading.value,
                    onPressed: () {
                      quizController.nextQuestion();
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

  
}


