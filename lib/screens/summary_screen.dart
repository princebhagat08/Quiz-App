import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizapp_testline/const/app_color.dart';
import 'package:quizapp_testline/const/app_images.dart';
import 'package:quizapp_testline/const/txt_style.dart';
import 'package:quizapp_testline/screens/home_screen.dart';
import 'package:quizapp_testline/screens/quiz_screen.dart';
import 'package:quizapp_testline/screens/review_screen.dart';

import '../controller/quiz_controller.dart';
import 'custom_widgets/bubble.dart';

class SummaryScreen extends StatelessWidget {
  final double completion;
  final double totalQuestion;
  final double correctAns;
  final double incorrectAns;
  final double totalScore;

 SummaryScreen({
    super.key,
    required this.completion,
    required this.totalQuestion,
    required this.correctAns,
    required this.incorrectAns,
    required this.totalScore,
  });

  final QuizController quizController = Get.put(QuizController());

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async {
        // Navigate to home screen
        Get.offAll(()=>HomeScreen());
        return false; // Prevent default back button behavior
      },
      child: Scaffold(
        backgroundColor: AppColor.whiteColor,
        body: Stack(
          children: [
            // Purple container
            Positioned(
              left: 10,
              right: 10,
              top: 25,
              child: Container(
                height: mq.height * 0.5,
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
                    Positioned(
                      right: -30,
                      bottom: -10,
                      child: Bubble(
                          size: 150, color: AppColor.whiteColor.withOpacity(0.2)),
                    ),

                    // Concentric bubbles
                    Positioned(
                      top: (mq.height * 0.5 - 300) / 2,
                      left: (mq.width - 300) / 2,
                      child: Bubble(
                          size: 300, color: AppColor.whiteColor.withOpacity(0.3)),
                    ),
                    Positioned(
                      top: (mq.height * 0.5 - 250) / 2,
                      left: (mq.width - 250) / 2,
                      child: Bubble(
                          size: 250, color: AppColor.whiteColor.withOpacity(0.3)),
                    ),
                    Positioned(
                      top: (mq.height * 0.5 - 200) / 2,
                      left: (mq.width - 200) / 2,
                      child: Bubble(
                        size: 200,
                        color: AppColor.whiteColor.withOpacity(1),
                        text: Center(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Your Score',
                              style: xLargeBoldColorText,
                            ),
                            Text(
                              '${totalScore.toInt()}',
                              style: xxLargeBoldColorText,
                            )
                          ],
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //   Summary Card
            Positioned(
              left: 25,
              right: 25,
              top: mq.height * 0.45,
              child: Container(
                padding: EdgeInsets.all(16),
                height: mq.height * 0.25,
                decoration: BoxDecoration(
                  color: AppColor.whiteColor,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: AppColor.grey.withOpacity(0.8),
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildStatItem(
                            '$completion %', 'Completion', Colors.purple),
                        _buildStatItem('${totalQuestion.toInt()}',
                            'Total Question', Colors.purple),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildStatItem(
                            '${correctAns.toInt()}', 'Correct', Colors.green),
                        _buildStatItem(
                            '${incorrectAns.toInt()}', 'Wrong', Colors.red),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // Badges Earned
            Positioned(
              left: 25,
              right: 25,
              top: mq.height * 0.72,
              child: Container(
                padding: EdgeInsets.all(12),
                // height: mq.height * 0.15,
                decoration: BoxDecoration(
                  color: AppColor.whiteColor,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: AppColor.grey.withOpacity(0.8),
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Text("Badges"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(badge),
                          radius: 30,
                        ),
                        CircleAvatar(
                          backgroundImage: AssetImage(badge),
                          radius: 30,
                        ),
                        CircleAvatar(
                          backgroundImage: AssetImage(badge),
                          radius: 30,
                        ),
                        CircleAvatar(
                          backgroundImage: AssetImage(badge),
                          radius: 30,
                        ),

                      ],
                    ),
                  ],
                ),
              ),
            ),

            // Bottom Action Buttons
            Positioned(
              // top: mq.height * 0.75,
              left: 20,
              right: 20,
              bottom: 20,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildActionButton(
                        icon: Icons.replay,
                        label: 'Play Again',
                        color: Colors.blue,
                        onTap: () {
                          // Clear any existing quiz state from memory
                          // Get.delete<QuizController>(force: true);
                          quizController.userAnswers.clear();
                          // Navigate to QuizScreen and remove all previous routes
                          Get.offAll(() => QuizScreen(),
                              transition: Transition.fade);
                        },
                      ),
                      _buildActionButton(
                        icon: Icons.remove_red_eye,
                        label: 'Review Answer',
                        color: Colors.brown,
                        onTap: () {
                          onReviewAnswersPressed();
                        },
                      ),

                      _buildActionButton(
                        icon: Icons.leaderboard,
                        label: 'Leaderboard',
                        color: Colors.grey[700]!,
                        onTap: () {},
                      ),

                      // _buildActionButton(
                      //   icon: Icons.picture_as_pdf,
                      //   label: 'Generate PDF',
                      //   color: Colors.teal,
                      //   onTap: () {},
                      // ),
                    ],
                  ),
                  // SizedBox(height: 30),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //   children: [
                  //     _buildActionButton(
                  //       icon: Icons.home,
                  //       label: 'Home',
                  //       color: Colors.purple,
                  //       onTap: () {},
                  //     ),
                  //
                  //     _buildActionButton(
                  //       icon: Icons.share,
                  //       label: 'Share Score',
                  //       color: Colors.blue[700]!,
                  //       onTap: () {},
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatItem(String value, String label, Color color) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Container(
              height: 12,
              width: 12,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              value,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
          ],
        ),
        SizedBox(height: 4),
        Text(
          label,
          style: largeBoldText,
        ),
      ],
    );
  }

  Widget _buildActionButton({
    required IconData icon,
    required String label,
    required Color color,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: Colors.white,
              size: 24,
            ),
          ),
          SizedBox(height: 4),
          Text(
            label,
            style: smallBoldText,
          ),
        ],
      ),
    );
  }

  void onReviewAnswersPressed() {
    final quizController =
        Get.find<QuizController>(); // Use existing controller
    quizController.enterReviewMode();
    Get.to(() => ReviewScreen());
  }
}
