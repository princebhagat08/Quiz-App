
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizapp_testline/const/app_images.dart';

import '../../const/app_color.dart';
import '../../const/txt_style.dart';

class IntoPage3 extends StatelessWidget {
  const IntoPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent.withOpacity(0.4),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Illustration/Image
          Image.asset(
            onBoardingImg3, // Make sure to add this image
            height: 300,
          ),
          const SizedBox(height: 32),

          // Title
           Text(
            'Discover Your Potential',
            style: TextStyle(
              fontSize: 28,
              fontFamily: fontFamily,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
          const SizedBox(height: 16),

          // Description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Text(
              'Your Journey to Brilliance Begins Here\nDiscover, Learn, Achieve.',
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
