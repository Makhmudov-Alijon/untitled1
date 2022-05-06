import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorPage extends GetxController{
  RxDouble result2 = 0.0.obs;
  RxDouble equation2 = 0.0.obs;
  RxDouble expression2 = 0.0.obs;
  void buttonPressed(RxDouble buttonText){
    if(buttonText=='C'){

    }else if(buttonText=='⌫'){

    }else if(buttonText=='enter'){

    }else{
      equation2=(equation2+buttonText.toDouble()) as RxDouble;
    }
  }
}