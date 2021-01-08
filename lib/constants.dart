import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


const kbuttoncolor = Color(0xFFE9F0F4);
const kfunctioncolor = Color(0xFFFF9500);
const kequalcolor = Color(0xff2FC873);
const kclearcolor = Color(0xffF8ECED);


const  kinputcontainer =    BoxDecoration(
  color: kbuttoncolor,
  borderRadius: BorderRadiusDirectional.all(Radius.circular(10.0)),

);

const kbuttondesign = BoxDecoration(
    color: kbuttoncolor,
    borderRadius: BorderRadiusDirectional.all(Radius.circular(25.0))
) ;
const kequalbuttondesign = BoxDecoration(
    color: kequalcolor,
    borderRadius: BorderRadiusDirectional.all(Radius.circular(25.0))
) ;
const kfunctionbuttondesign = BoxDecoration(
    color: kfunctioncolor,
    borderRadius: BorderRadiusDirectional.all(Radius.circular(20.0))
) ;
const kbuttonDimension = BoxConstraints.tightFor(
  height: 65.0,
  width: 65.0,

);
const kzeroDimension = BoxConstraints.tightFor(
  height: 65.0,
  width: 162.5,

);
const knumberbuttonlabel = TextStyle(
  color: Colors.black,
  fontSize: 20.0,

);
const kfunctionbuttonlabel = TextStyle(
  color: Colors.white,
  fontSize: 20.0,

);


final kclearbuttonlabel = TextStyle(
    color: Colors.red[400],
    fontSize: 20.0
);

const kclearbuttondesign  = BoxDecoration(
    color: kclearcolor,
    borderRadius: BorderRadiusDirectional.all(Radius.circular(20.0))
);

final kinputtext = TextStyle(
  color:Colors.black,

  fontSize: 55.0,
);



