import 'package:get/get.dart';

class MyController extends GetxController{
  List<dynamic> calculator=[].obs as List<dynamic>;
  var firstNumber='0'.obs;
  var secondNumber='0'.obs;
  var mathResult='0'.obs;
  var operator = ''.obs;
  var a=0.obs;
  var b=''.obs;
  number(String number){
    if(firstNumber.value=='0'){
     return firstNumber.value=number;
    }
    firstNumber.value=firstNumber.value.toString()+number;
  }

  number2(String number){
    if(secondNumber.value=='0'){
      return secondNumber.value=number;
    }
    secondNumber.value=secondNumber.value.toString()+number;
  }
  selectOperation(String operation) {
    operator.value = operation;
  }
  mathCalculator(){
    double num1 = double.parse(firstNumber.value);
    double num2 = double.parse(secondNumber.value);

    if(operator.value=='+'){
      mathResult.value=' ${num1 + num2}';
    }else if(operator.value=='-'){
      mathResult.value=' ${num1 - num2}';
    }else if(operator.value=='/'){
      mathResult.value=' ${num1 / num2}';
    }else if(operator.value=='×'){
      mathResult.value=' ${num1 * num2}';
    }
  }
  delete(){
    double num1 = double.parse(firstNumber.value);
    double num2 = double.parse(secondNumber.value);

  }
}