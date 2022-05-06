import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/controllers/model_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final MyController _controller=Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: height*.38,
              width: width*1,
              color: Colors.grey[600],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Obx((){
                   return  Container(
                     margin: EdgeInsets.only(
                       top: height*.1,
                       right: width*.05
                     ),
                     child: Text(_controller.firstNumber.value,style: TextStyle(fontSize: 30,color: Colors.white),),
                   );
                 }),
                  Obx((){
                    return  Container(
                      margin: EdgeInsets.only(
                          right: width*.05
                      ),
                      child: Text(_controller.operator.value,style: TextStyle(fontSize: 30,color: Colors.white),),
                    );
                  }),
                  Obx((){
                    return  Container(
                      margin: EdgeInsets.only(
                          right: width*.05
                      ),
                      child: Text(_controller.secondNumber.value,style: TextStyle(fontSize: 30,color: Colors.white),),
                    );
                  }),
                  Container(
                    margin: EdgeInsets.only(
                        top: height*.02
                    ),
                    height: height*.01,
                    width: width*1,
                    color: Colors.white,
                  ),

                  Obx((){
                    return  Container(
                      margin: EdgeInsets.only(
                        top: height*.01,
                          right: width*.05
                      ),
                      child: Text(_controller.mathResult.value.toString(),style: TextStyle(fontSize: 30,color: Colors.white),),
                    );
                  }),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  SizedBox(
                    height: height*.005,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: width*.02,
                      ),
                      Container(
                        height: height*.12,
                        width: width*.23,
                        color: Colors.orange,
                        child: FlatButton(
                          child: Text('C',style: TextStyle(fontSize: 20,color: Colors.white)),
                          onPressed: () {
                            _controller.firstNumber.value=_controller.a.value.toString();
                            _controller.secondNumber.value=_controller.a.value.toString();
                            _controller.operator.value=_controller.b.value.toString();
                            _controller.mathResult.value=_controller.a.value.toString();
                          },
                        ),
                      ),
                      SizedBox(
                        width: width*.013,
                      ),
                      Container(
                        height: height*.12,
                        width: width*.23,
                        color: Colors.indigo,
                        child: FlatButton(
                          child: Text('×',style: TextStyle(fontSize: 20,color: Colors.white)),
                          onPressed: () {
                            _controller.selectOperation('×');

                          },
                        ),
                      ),
                      SizedBox(
                        width: width*.013,
                      ),
                      Container(
                        height: height*.12,
                        width: width*.23,
                        color: Colors.indigo,
                        child: FlatButton(
                          child: Text('%',style: TextStyle(fontSize: 20,color: Colors.white)),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        width: width*.013,
                      ),
                      Container(
                        height: height*.12,
                        width: width*.23,
                        color: Colors.orange,
                        child: FlatButton(
                          child: Text('⌫',style: TextStyle(fontSize: 20,color: Colors.white)),
                          onPressed: () {
                            _controller.delete();
                          },
                        ),
                      ),
                      SizedBox(
                        width: width*.02,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height*.005,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: width*.02,
                      ),
                      Container(
                        height: height*.12,
                        width: width*.23,
                        color: Colors.grey,
                        child: FlatButton(
                          child: Text('7'),
                          onPressed: () {

                            if(_controller.operator.value==''){
                              _controller.number('7');
                            }else {
                              _controller.number2('7');
                            }

                          },
                        ),
                      ),
                      SizedBox(
                        width: width*.013,
                      ),
                      Container(
                        height: height*.12,
                        width: width*.23,
                        color: Colors.grey,
                        child: FlatButton(
                          child: Text('8'),
                          onPressed: () {

                            if(_controller.operator.value==''){
                              _controller.number('8');
                            }else {
                              _controller.number2('8');
                            }

                          },
                        ),
                      ),
                      SizedBox(
                        width: width*.013,
                      ),
                      Container(
                        height: height*.12,
                        width: width*.23,
                        color: Colors.grey,
                        child: FlatButton(
                          child: Text('9'),
                          onPressed: () {

                            if(_controller.operator.value==''){
                              _controller.number('9');
                            }else {
                              _controller.number2('9');
                            }

                          },
                        ),
                      ),
                      SizedBox(
                        width: width*.013,
                      ),
                      Container(
                        height: height*.12,
                        width: width*.23,
                        color: Colors.indigo,
                        child: FlatButton(
                          child: Text('/',style: TextStyle(fontSize: 20,color: Colors.white),),
                          onPressed: () {

                            _controller.selectOperation('/');

                          },
                        ),
                      ),
                      SizedBox(
                        width: width*.02,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height*.005,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: width*.02,
                      ),
                      Container(
                        height: height*.12,
                        width: width*.23,
                        color: Colors.grey,
                        child: FlatButton(
                          child: Text('4'),
                          onPressed: () {
                            if(_controller.operator.value==''){
                              _controller.number('4');
                            }else {
                              _controller.number2('4');
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        width: width*.013,
                      ),
                      Container(
                        height: height*.12,
                        width: width*.23,
                        color: Colors.grey,
                        child: FlatButton(
                          child: Text('5'),
                          onPressed: () {
                            if(_controller.operator.value==''){
                              _controller.number('5');
                            }else {
                              _controller.number2('5');
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        width: width*.013,
                      ),
                      Container(
                        height: height*.12,
                        width: width*.23,
                        color: Colors.grey,
                        child: FlatButton(
                          child: Text('6'),
                          onPressed: () {
                            if(_controller.operator.value==''){
                              _controller.number('6');
                            }else {
                              _controller.number2('6');
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        width: width*.013,
                      ),
                      Container(
                        height: height*.12,
                        width: width*.23,
                        color: Colors.indigo,
                        child: FlatButton(
                          child: Text('+',style: TextStyle(fontSize: 20,color: Colors.white)),
                          onPressed: () {
                            _controller.selectOperation('+');
                          },
                        ),
                      ),
                      SizedBox(
                        width: width*.02,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height*.005,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: width*.02,
                      ),
                      Container(
                        height: height*.12,
                        width: width*.23,
                        color: Colors.grey,
                        child: FlatButton(
                          child: Text('1'),
                          onPressed: () {
                            if(_controller.operator.value==''){
                              _controller.number('1');
                            }else {
                              _controller.number2('2');
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        width: width*.013,
                      ),
                      Container(
                        height: height*.12,
                        width: width*.23,
                        color: Colors.grey,
                        child: FlatButton(
                          child: Text('2'),
                          onPressed: () {
                            if(_controller.operator.value==''){
                              _controller.number('2');
                            }else {
                              _controller.number2('2');
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        width: width*.013,
                      ),
                      Container(
                        height: height*.12,
                        width: width*.23,
                        color: Colors.grey,
                        child: FlatButton(
                          child: Text('3'),
                          onPressed: () {
                            if(_controller.operator.value==''){
                              _controller.number('3');
                            }else {
                              _controller.number2('3');
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        width: width*.013,
                      ),
                      Container(
                        height: height*.12,
                        width: width*.23,
                        color: Colors.indigo,
                        child: FlatButton(
                          child: Text('-',style: TextStyle(fontSize: 20,color: Colors.white)),
                          onPressed: () {
                            _controller.selectOperation('-');
                          },
                        ),
                      ),
                      SizedBox(
                        width: width*.02,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height*.005,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: width*.02,
                      ),
                      Container(
                        height: height*.12,
                        width: width*.23,
                        color: Colors.grey,
                        child: FlatButton(
                          child: Text('00'),
                          onPressed: () {
                            if(_controller.operator.value==''){
                              _controller.number('00');
                            }else {
                              _controller.number2('00');
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        width: width*.013,
                      ),
                      Container(
                        height: height*.12,
                        width: width*.23,
                        color: Colors.grey,
                        child: FlatButton(
                          child: Text('0'),
                          onPressed: () {
                            if(_controller.operator.value==''){
                              _controller.number('0');
                            }else {
                              _controller.number2('0');
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        width: width*.013,
                      ),
                      Container(
                        height: height*.12,
                        width: width*.23,
                        color: Colors.grey,
                        child: FlatButton(
                          child: Text(','),
                          onPressed: () {
                            if(_controller.operator.value==''){
                              _controller.number(',');
                            }else {
                              _controller.number2(',');
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        width: width*.013,
                      ),
                      Container(
                        height: height*.12,
                        width: width*.23,
                        color: Colors.orange,
                        child: FlatButton(
                          child: Text('enter',style: TextStyle(fontSize: 20,color: Colors.white)),
                          onPressed: () {
                            _controller.mathCalculator();
                          },
                        ),
                      ),
                      SizedBox(
                        width: width*.02,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

