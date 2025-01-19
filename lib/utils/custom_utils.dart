import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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

void showToast(String message) {
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      textColor: Colors.white,
      fontSize: 16.0);
}

void showErrorDialog(String message, List<Widget> actions){
  Get.defaultDialog(
      title: "Error",
      titleStyle: TextStyle(color: Colors.redAccent),
      content: Text(message,style: mediumBoldText,),
      actions: actions,
  );
}

