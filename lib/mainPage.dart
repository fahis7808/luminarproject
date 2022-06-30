import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:luminarproject/FirstPage.dart';
import 'package:luminarproject/SecondPage.dart';

void main(){
  runApp(MaterialApp(
    home: FirstPages(),
    routes: {
      'Second':(context)=> SecondPages(),
    },
  ));
}