import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizapp_testline/screens/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../const/app_color.dart';
import '../const/app_images.dart';
import '../const/txt_style.dart';
import 'onBording_screen/onBording_screen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen>  with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  late Animation<double> _animation1;
  late Animation<double> _animation2;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _animation1 = CurvedAnimation(parent: _controller, curve: Curves.bounceOut);
    _animation2 = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
    _controller.forward();

   _checkFirstTime();
  }

  void _checkFirstTime() async{
    final prefs = await SharedPreferences.getInstance();
    final showHome = prefs.getBool('showHome') ?? false;
    await Future.delayed(const Duration(seconds: 4));
    if(showHome){
      Get.offAll(()=> HomeScreen());

    }else{
      Get.offAll(() => OnbordingScreen());
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: mq.height,
        width: mq.width,
        color: AppColor.primaryColor.withOpacity(0.7),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            ScaleTransition(
              scale: _animation1,
              child: Image.asset(
               whiteLogo,
                width: mq.width*0.7,
                height: mq.width*0.7,
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ScaleTransition(
                scale: _animation2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(width: 15),
                    Text('Expand Your Horizons\nQuiz Your Way to the Top!',
                        style: largeWhiteText),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}