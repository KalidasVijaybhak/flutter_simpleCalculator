
import 'package:simple_calculator/inputPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main () => runApp(Calculator());
class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Input(),    );
  }

}
