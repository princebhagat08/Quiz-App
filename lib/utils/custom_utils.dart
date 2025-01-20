import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:quizapp_testline/const/app_color.dart';

import '../const/txt_style.dart';

void showErrorSnackbar(String message) {
  Get.snackbar(
      'Error', message,
      colorText: Colors.white,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.red,
      duration: const Duration(seconds: 2));
}

void showSuccessSnackbar(String message) {
  Get.snackbar('Success', message,
      colorText: Colors.white,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.green,
      duration: const Duration(seconds: 2));
}

void showNormalSnackbar(String title, String message){
  Get.snackbar(
    title,message,
      titleText: Text(title,style: TextStyle(color: AppColor.whiteColor),),
     messageText: Text(message,style: TextStyle(color: AppColor.whiteColor),),
  snackPosition: SnackPosition.BOTTOM,
    backgroundColor: AppColor.primaryColor.withOpacity(0.8),
    duration: Duration(seconds: 3)
  );
}

void showToast(String message) {
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      textColor: Colors.white,
      fontSize: 16.0);
}

void showCustomDialog(String title,String message,Color color, List<Widget> actions){
  Get.defaultDialog(
      title: title,
      titleStyle: TextStyle(color: color),
      content: Text(message,style: mediumBoldText,),
      actions: actions,
  );
}

