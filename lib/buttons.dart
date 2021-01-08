import 'package:simple_calculator/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class reusableNumberButtons extends StatelessWidget {


  reusableNumberButtons({this.onPress,this.num,this.value});
  String value = 'x';
  String num;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    switch(num){
      case 'number':
        return GestureDetector(
          onTap: onPress,
          child: Container(
            child: Center(
              child: Text(value,
                style: knumberbuttonlabel,),
            ),
            decoration: kbuttondesign,
            constraints: kbuttonDimension,
          ),

        );
        break;
      case  'function':
        return GestureDetector(
          onTap: onPress,
          child: Container(
            child: Center(
              child: Text(value,
                style: kfunctionbuttonlabel,),
            ),
            decoration: kfunctionbuttondesign,
            constraints: kbuttonDimension,
          ),

        );
        break;
      case'clear':
        return GestureDetector(
          onTap: onPress,
          child: Container(
            child: Center(
              child: Text(value,
                style: kclearbuttonlabel,),
            ),
            decoration: kclearbuttondesign,
            constraints: kbuttonDimension,
          ),

        );
        break;
      case 'zero':
        return GestureDetector(
          onTap: onPress,
          child: Container(
            child: Center(
              child: Text(value,
                style: knumberbuttonlabel,),
            ),
            decoration: kbuttondesign,
            constraints: kzeroDimension,
          ),

        );
        break;
      case 'equal':
        return GestureDetector(
          onTap: onPress,
          child: Container(
            child: Center(
              child: Text(value,
                style: kfunctionbuttonlabel,),
            ),
            decoration: kequalbuttondesign,
            constraints: kbuttonDimension,
          ),

        );
        break;
    }
  }

}

