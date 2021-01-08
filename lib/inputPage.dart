
import 'dart:ui';

import 'package:simple_calculator/buttons.dart';
import 'package:simple_calculator/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
String resultText = '';
String inputText  = '0';
int value = 0;
var val1,val2;

bool func_pressed = false;
String ops_function = "";


List index  = [
  '0','1', '2'  ,'3', '4' ,'5', '6' ,'7', '8' ,'9','.',
] ;
class Input extends StatefulWidget {
  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<Input> {
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(

              constraints: BoxConstraints.tightFor(
                height: 200.0,
                width: double.infinity,
              ),
              decoration: kinputcontainer,
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.only(bottom: 10.0,left: 10.0,right: 10.0),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [

                  Container(


                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(inputText,

                        style:  kinputtext,
                        //      textDirection: TextDirection.rtl,
                        maxLines: 1,




                      ),
                    ),
                  ),

                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                reusableNumberButtons(onPress:(){
                  setState(() {    print(inputText);
                  inputText = '0';

                  });
                },num:'clear',value: 'CE'),
                reusableNumberButtons(onPress:(){
                  setState(() {
                    if(inputText != '0'){
                      String x = inputText.substring(0, inputText.length-1);
                      inputText = x;
                      if(inputText.isEmpty){
                        inputText = '0';
                      }
                    }

                  });
                },num:'number',value: 'C'),
                reusableNumberButtons(num:'number',value: 'x') ,
                reusableNumberButtons(onPress:(){
                  setState(() {

                    if(func_pressed == false){
                      val1 =  double.parse(inputText);
                      inputText = '0';
                      ops_function = '/';
                    }
                    else if(func_pressed == true){
                      ops_function = '/';
                    }
                  });

                },num:'function',value: '/')  ,
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                reusableNumberButtons(onPress:(){
                  setState(() {
                    if (inputText.length <=9) {
                      if(inputText  == '0' || inputText == '0.0' && inputText == '0.0'){


                        inputText = '1';

                      } else if(inputText  != '0' ){
                        value = 1;
                        inputText+=index[value];

                      }
                    }
                  });
                },num:'number',value: '1'),
                reusableNumberButtons(onPress:(){
                  setState(() {
                    if (inputText.length <=9 ) {
                      if(inputText  == '0' || inputText == '0.0' && inputText == '0.0'){


                        inputText = '2';

                      } else if(inputText  != '0' ){
                        value = 2;
                        inputText+=index[value];

                      }
                    }
                  });
                },num:'number',value: '2'),
                reusableNumberButtons(onPress:(){
                  setState(() {
                    if (inputText.length <=9) {
                      if(inputText  == '0' || inputText == '0.0' && inputText == '0.0'){


                        inputText = '3';

                      } else if(inputText  != '0' ){
                        value = 3;
                        inputText+=index[value];

                      }
                    }
                  });
                },num:'number',value: '3') ,
                reusableNumberButtons(onPress:(){
                  setState(() {

                    if(func_pressed == false){
                      val1 =  double.parse(inputText);
                      inputText = '0';
                      ops_function = '+';
                    }
                    else if(func_pressed == true){
                      ops_function = '+';
                    }
                  });

                },num:'function',value: '+')  ,
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                reusableNumberButtons(onPress:(){
                  setState(() {
                    if (inputText.length <=9) {
                      if(inputText  == '0' || inputText == '0.0' && inputText == '0.0'){


                        inputText = '4';

                      } else if(inputText  != '0' ){
                        value = 4;
                        inputText+=index[value];

                      }
                    }
                  });
                },num:'number',value: '4'),
                reusableNumberButtons(onPress:(){
                  setState(() {
                    if (inputText.length <=9) {
                      if(inputText  == '0' || inputText == '0.0' && inputText == '0.0'){


                        inputText = '5';

                      } else if(inputText  != '0' ){
                        value = 5;
                        inputText+=index[value];

                      }
                    }
                  });
                },num:'number',value: '5'),
                reusableNumberButtons(onPress:(){
                  setState(() {
                    if (inputText.length <=9) {
                      if(inputText  == '0' || inputText == '0.0' && inputText == '0.0'){


                        inputText = '6';

                      } else if(inputText  != '0' ){
                        value = 6;
                        inputText+=index[value];

                      }
                    }
                  });
                },num:'number',value: '6') ,
                reusableNumberButtons(onPress:(){
                  setState(() {

                    if(func_pressed == false){
                      val1 =  double.parse(inputText);
                      inputText = '0';
                      ops_function = '-';
                    }
                    else if(func_pressed == true){
                      ops_function = '-';
                    }
                  });

                },num:'function',value: '-')  ,
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                reusableNumberButtons(onPress:(){
                  setState(() {
                    if (inputText.length <=9) {
                      if(inputText  == '0' || inputText == '0.0' && inputText == '0.0'){


                        inputText = '7';

                      } else if(inputText  != '0' ){
                        value = 7;
                        inputText+=index[value];

                      }
                    }
                  });
                },num:'number',value: '7'),
                reusableNumberButtons(onPress:(){
                  setState(() {
                    if (inputText.length <=9) {
                      if(inputText  == '0' || inputText == '0.0' && inputText == '0.0'){


                        inputText = '8';

                      } else if(inputText  != '0' ){
                        value = 8;
                        inputText+=index[value];

                      }
                    }
                  });
                },num:'number',value: '8'),
                reusableNumberButtons(onPress:(){
                  setState(() {
                    if (inputText.length <=9) {
                      if(inputText  == '0' || inputText == '0.0' && inputText == '0.0'){


                        inputText = '9';

                      } else if(inputText  != '0' ){
                        value = 9;
                        inputText+=index[value];

                      }
                    }
                  });
                },num:'number',value: '9') ,
                reusableNumberButtons(onPress:(){
                  setState(() {

                    if(func_pressed == false){
                      val1 =  double.parse(inputText);
                      inputText = '0';
                      ops_function = '*';
                    }
                    else if(func_pressed == true){
                      ops_function = '*';
                    }
                  });

                },num:'function',value: 'X')  ,
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                reusableNumberButtons(onPress:(){
                  setState(() {
                    if (inputText.length <=9) {
                      if(inputText == '0'){
                        inputText = '0';

                      }
                      else{
                        inputText+=index[0];
                      }
                    }
                  });
                },num:'zero',value: '0',),
                reusableNumberButtons(onPress:(){
                  setState(() {
                    if (inputText.length <9) {
                      if(inputText.contains('.') == false) {
                        inputText+=index[10];
                        print(inputText);
                        print(inputText.length);
                      }

                    }

                  });
                },num:'number',value: '.',),
                reusableNumberButtons(onPress:(){
                  switch(ops_function){
                    case '+':
                      val2 = double.parse(inputText);    setState(() {
                        inputText= (val2 + val1).toString();
                      });

                      func_pressed = false;
                      break;
                    case '+':
                      val2 = double.parse(inputText);    setState(() {
                        inputText= (val2 + val1).toString();
                      });

                      func_pressed = false;
                      break;
                    case '-':
                      val2 = double.parse(inputText);    setState(() {
                        inputText= (val2 - val1).toString();
                      });

                      func_pressed = false;
                      break;
                    case '/':
                      val2 = double.parse(inputText);

                      setState(() {

                        inputText= (val2 / val1).toString();


                      });

                      func_pressed = false;
                      break;
                    case '*':
                      val2 = double.parse(inputText);    setState(() {
                        inputText= (val2 * val1).toString();
                      });

                      func_pressed = false;
                      break;

                  }
                },num:'equal',value: '='),
              ],
            ),


          ],
        ),
      ),
    );

  }
}

// var x;
// x = parse(input)
//     func_press = true
//
//
// if(func_press = true){
//   x + y;
//
// }
// else{
//
// }
//
//       equal(x )
