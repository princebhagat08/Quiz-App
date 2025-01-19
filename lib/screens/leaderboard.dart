import 'package:flutter/material.dart';
import 'package:quizapp_testline/const/app_color.dart';
import 'package:quizapp_testline/const/app_images.dart';
import 'package:quizapp_testline/const/txt_style.dart';
import 'package:get/get.dart';

import 'custom_widgets/bubble.dart';

class Leaderboard extends StatelessWidget {
  const Leaderboard({super.key});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: Column(
        children: [
          Container(
            height: mq.height*0.50,
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              color: AppColor.primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    IconButton(onPressed: (){ Get.back(); }, icon: Icon(Icons.arrow_back,color: AppColor.whiteColor,)),
                    Text('Leaderboard',style: xLargeWhiteText,),
                  ],
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    _buildPodiumRectangle(2, mq.height*0.2, "442pt"),
                    _buildPodiumRectangle(1,mq.height*0.25, "453pt"),
                    _buildPodiumRectangle(3, mq.height*0.18, "433pt"),
                  ],
                ),
              ],
            ),
          ),

          // List of other players
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: 10,
              itemBuilder: (context, index) {
                return _buildLeaderboardItem(index + 4);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPodiumRectangle(int position,double height, String points) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(demoProfileImgUrl,scale: 5),
          radius: 30,
        ),
        Text('Demo User', style: mediumWhiteText,),
        SizedBox(height: 8,),
        Container(
          width: 80, // Adjust width as needed
          height: height, // Adjust height as needed
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                position.toString(),
                style: const TextStyle(
                  color: Colors.purple,
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                points,
                style: const TextStyle(
                  color: Colors.purple,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildLeaderboardItem(int position) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Row(
        children: [
          Text(
            position.toString().padLeft(2, '0'),
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          const SizedBox(width: 16),
          const CircleAvatar(
              backgroundImage: NetworkImage(demoProfileImgUrl),
              radius: 20),
          const SizedBox(width: 16),
          const Expanded(
            child: Text(
              'Demo User',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.purple.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Text(
              '120pt',
              style: TextStyle(
                color: Colors.purple,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
