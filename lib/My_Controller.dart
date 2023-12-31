import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  var books = 0.obs;
  var pens =0.obs;
  int get sum=>books.value+pens.value;

  increment() {
    books.value++;
  }

  decrement() {
    if (books.value <= 0) {
      Get.snackbar("Buying Books","can not be less then zero",
      icon: Icon(Icons.alarm),
    barBlur: 20,
    isDismissible: true,
    duration: Duration(seconds: 3),
    );

  }else{

      pens.value--;
    }
  }
  incrementPens() {
    pens.value++;
  }

  decrementPens() {
    if (pens.value <= 0) {
      Get.snackbar("Buying Books","can not be less then zero",
        icon: Icon(Icons.alarm),
        barBlur: 20,
        isDismissible: true,
        duration: Duration(seconds: 3),
      );

    }else{
      pens.value--;
    }
  }
}