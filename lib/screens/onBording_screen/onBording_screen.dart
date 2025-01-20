
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quizapp_testline/screens/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../const/app_color.dart';
import '../../const/txt_style.dart';
import 'into_page1.dart';
import 'intro_page2.dart';
import 'intro_page3.dart';

class OnbordingScreen extends StatefulWidget {
  const OnbordingScreen({super.key});

  @override
  State<OnbordingScreen> createState() => _OnbordingScreenState();
}

class _OnbordingScreenState extends State<OnbordingScreen> {
  PageController _controller = PageController();

  bool lastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (value){
              setState(() {
                lastPage = (value == 2);
              });

            },
            children: [
              IntoPage1(),
              IntoPage2(),
              IntoPage3(),
            ],
          ),
          Container(
              alignment: const Alignment(0, 0.9),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      onTap:(){
                        _controller.jumpToPage(2);
                      },
                      child: Text("Skip", style: largeText,)),
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 3,
                    effect: WormEffect(
                      dotColor: AppColor.whiteColor,
                      activeDotColor: Colors.black,
                      dotHeight: 15,
                      dotWidth: 15,
                      spacing: 16,
                    ),
                  ),
                   lastPage ?
                   GestureDetector(
                     onTap:() async{
                       final prefs = await SharedPreferences.getInstance();
                       prefs.setBool('showHome', true);
                      Get.off(()=>HomeScreen());
                     },
                     child: Text("Get Started",style: largeText ,),
                   ):
                  GestureDetector(
                      onTap:(){
                        _controller.nextPage(duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                      },
                      child: Text("Next",style: largeText ,),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
