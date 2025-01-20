
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizapp_testline/const/app_images.dart';

import '../../const/app_color.dart';
import '../../const/txt_style.dart';

class IntoPage2 extends StatelessWidget {
  const IntoPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.secondaryColor.withOpacity(0.4),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Illustration/Image
          Image.asset(
            onBoardingImg2, // Make sure to add this image to your assets
            height: 300,
          ),
          const SizedBox(height: 32),

          // Title
          Text(
            'Compete With Peers',
            style: TextStyle(
              fontSize: 28,
              fontFamily: fontFamily,
              fontWeight: FontWeight.bold,
              color: AppColor.secondaryColor,
            ),
          ),

          const SizedBox(height: 16),

          // Description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Text(
              'Challenge Your Limits\nExplore, Learn, and Dominate the Quiz Universe!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontFamily: fontFamily,
                color:Colors.black,
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
