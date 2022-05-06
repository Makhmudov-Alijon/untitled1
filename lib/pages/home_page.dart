import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/utils.dart';
import 'package:get/get.dart';
import '../controllers/calculator_controller.dart';
import '../controllers/calculator_page.dart';
import '';
class HomePAge extends StatefulWidget {
  const HomePAge({Key? key}) : super(key: key);

  @override
  _HomePAgeState createState() => _HomePAgeState();
}

class _HomePAgeState extends State<HomePAge> {
  CalculatorController _controller=Get.put(CalculatorController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(30.0),
          child: Column(
            children: [
              TextFormField(

                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Number 1'),
                onChanged: (number) {
                  _controller.number1.value = double.parse(number);
                },
              ),
              Obx(() {
                return Text(_controller.operatorSymb.value,
                    style: TextStyle(fontSize: 30));
              }),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Number 2'),
                onChanged: (number) {
                  _controller.number2.value = double.parse(number);
                },
              ),
              Text("Natija: ", style: TextStyle(fontSize: 30)),
              Obx(() => Text(_controller.result.value.toString(),
                  style: TextStyle(fontSize: 30))),
              Wrap(
                direction: Axis.horizontal,
                children: [
                  ElevatedButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      _controller.plus();
                    },
                    child: const Text('+'),
                  ),
                  ElevatedButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      _controller.minus();
                    },
                    child: const Text('-'),
                  ),
                  ElevatedButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      _controller.multiply();
                    },
                    child: const Text('*'),
                  ),
                  ElevatedButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      _controller.divide();
                    },
                    child: const Text('/'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
