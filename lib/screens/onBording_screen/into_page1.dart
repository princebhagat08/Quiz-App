
import 'package:flutter/material.dart';
import 'package:quizapp_testline/const/app_images.dart';

import '../../const/app_color.dart';
import '../../const/txt_style.dart';


class IntoPage1 extends StatelessWidget {
  const IntoPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.primaryColor.withOpacity(0.4),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            onBoardingImg1, // Add this image to your assets
            height: 300,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 40),

          // Title
           Text(
            'Welcome to Quiz',
            style: TextStyle(
              fontSize: 28,
              fontFamily: fontFamily,
              fontWeight: FontWeight.bold,
              color: AppColor.primaryColor,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),

          // Description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              'Dive into the World of Curiosity\nLearn, Play, and Conquer Every Challenge!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontFamily: fontFamily,
                color: Colors.black,
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
