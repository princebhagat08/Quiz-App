import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:quizapp_testline/const/app_color.dart';
import 'package:quizapp_testline/const/app_images.dart';
import 'package:quizapp_testline/const/txt_style.dart';
import 'package:quizapp_testline/controller/quiz_controller.dart';
import 'package:quizapp_testline/screens/quiz_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:quizapp_testline/utils/custom_utils.dart';
import '../controller/timer_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final FocusNode _textFieldFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Image.asset(logo,),
        actions: [
          IconButton(
              onPressed: () => _showStreakBottomSheet(context),
              icon: _buildStreak()),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_active_outlined,
                size: 35,
              )),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            // Use responsive padding
            padding: EdgeInsets.symmetric(
              horizontal: screenSize.width * 0.02,
              vertical: screenSize.height * 0.02,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, bottom: 0.8),
                  child: Text('Hello Prince', style: xLargeBoldText),
                ),
                // _buildTopCard(),
                _buildSessionReminderCard(),
                _buildOngoingQuizzes(),
                _buildUpcomingQuizzes(),
                _buildPracticeSection(),
                // _buildReadingSection(),
                _buildStudyMaterialsSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildStreak() {
    return Container(
      width: 120,
      decoration: BoxDecoration(
        color: AppColor.lightPrimary.withOpacity(0.4),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            '10 Days',
            style: mediumBoldText,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 8),
            child: Image.asset(
              streak,
              height: 35,
            ),
          ),
        ],
      ),
    );
  }

  void _showStreakBottomSheet(BuildContext context) {
    final size = MediaQuery.of(context).size;
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.vertical(top: Radius.circular(size.width * 0.05)),
      ),
      builder: (context) {
        return Container(
          padding: EdgeInsets.all(size.width * 0.05),
          child: Stack(
            // mainAxisSize: MainAxisSize.min,
            children: [
              Lottie.asset(confetti,repeat: true),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(size.width * 0.06),
                child: Column(
                  children: [
                    SizedBox(height: size.height * 0.03),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: size.width * 0.2,
                          height: size.width * 0.2,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColor.primaryColor.withOpacity(0.1),
                          ),
                          child: Center(
                            child: Image.asset(
                              streak,
                              height: size.width * 0.1,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: size.height * 0.02),
                    Text(
                      '10 Days Streak!',
                      style: xLargeBoldText,
                    ),
                    SizedBox(height: size.height * 0.01),
                    Text(
                      'Consistency is the key',
                      style: mediumBoldText,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildSessionReminderCard() {
    DateTime today = DateTime.now();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Maintain Your Streak', style: largeBoldText),
        ),
        InkWell(
          onTap: () => Get.to(() => QuizScreen()),
          child: Container(
            margin: const EdgeInsets.only(bottom: 16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColor.secondaryColor.withOpacity(0.4),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: AppColor.secondaryColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Container(
                    padding: const EdgeInsets.only(
                        top: 1, bottom: 1, left: 12, right: 12),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          DateFormat('dd').format(today),
                          style: const TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          DateFormat('MMM').format(today),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.notification_add_outlined),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Quiz Of The Day (QOTD)",
                            style: mediumBoldText,
                            // TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "Basic concept of 12th biology",
                        style: mediumText,
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildOngoingQuizzes() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Ongoing Quizzes', style: largeBoldText),
        ),
        SizedBox(
          height: MediaQuery.of(Get.context!).size.height * 0.25,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context, index) {
              return Container(
                width: MediaQuery.of(context).size.width * 0.75,
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF9C27B0), // Purple primary
                      Color(0xFFAB47BC), // Purple lighter
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF9C27B0).withOpacity(0.3),
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 12, vertical: 6),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text('15 mins left',
                                style: TextStyle(color: Colors.white)),
                          ),
                          Icon(Icons.timer, color: Colors.white),
                        ],
                      ),
                      Spacer(),
                      Text(
                        'Biology Quiz ${index + 1}',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '25 Questions • 30 Minutes',
                        style: TextStyle(color: Colors.white.withOpacity(0.8)),
                      ),
                      SizedBox(height: 12),
                      ElevatedButton(
                        onPressed: () {
                          Get.to(() => QuizScreen());
                        },
                        child: Text('Continue Quiz'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.purple,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildUpcomingQuizzes() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Upcoming Quizzes', style: largeBoldText),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 2,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: ()=>showNormalSnackbar('Wait', 'Quiz will start on time'),
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.02,
                  vertical: 6,
                ),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.8),
                      spreadRadius: 2,
                      blurRadius: 8,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: AppColor.lightPrimary,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(Icons.quiz, color: AppColor.primaryColor),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Chemistry Final Quiz', style: mediumBoldText),
                          Text('Tomorrow • 10:00 AM', style: mediumText),
                        ],
                      ),
                    ),
                    Icon(Icons.chevron_right),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _buildPracticeSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8, top: 8),
          child: Text('Practice', style: largeBoldText),
        ),
        GridView.count(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          // Make childAspectRatio responsive
          childAspectRatio: MediaQuery.of(Get.context!).size.width /
              (MediaQuery.of(Get.context!).size.height / 2),
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          padding: EdgeInsets.all(8),
          children: [
            _buildPracticeCard('Subject-wise', Icons.book, Colors.blue),
            _buildPracticeCard('Topic-wise', Icons.category, Colors.green),
            _buildPracticeCard('Mock Tests', Icons.assignment, Colors.orange),
            _buildPracticeCard('Previous Year', Icons.history, Colors.purple),
          ],
        ),
      ],
    );
  }

  Widget _buildPracticeCard(String title, IconData icon, Color color) {
    return Card(
      elevation: 4,
      shadowColor: Colors.grey.withOpacity(0.8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: () {
          showNormalSnackbar('Will Update Soon!!', 'No practice material available');
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          padding: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: MediaQuery.of(Get.context!).size.width * 0.08,
                color: Color(0xFF9C27B0), // Purple primary
              ),
              SizedBox(height: 8),
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4A4A4A), // Darker text for better contrast
                ),
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }


  Widget _buildStudyMaterialsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Study Materials', style: largeBoldText),
        ),
        Container(
          height: MediaQuery.of(Get.context!).size.height * 0.2,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4, // Replace with actual count from your data
            itemBuilder: (context, index) {
              return Container(
                width: MediaQuery.of(context).size.width * 0.6,
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF9C27B0).withOpacity(0.8),
                      Color(0xFFAB47BC).withOpacity(0.9),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    Positioned(
                      right: -20,
                      top: -20,
                      child: Icon(
                        Icons.book,
                        size: 100,
                        color: Colors.white.withOpacity(0.2),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Topic ${index + 1}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                '5 Reading Materials',
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.9),
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          ElevatedButton(
                            onPressed: () {
                              showNormalSnackbar('Will Update Soon!!', 'No Study Material Available');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Color(0xFF9C27B0),
                            ),
                            child: Text('Start Learning'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
