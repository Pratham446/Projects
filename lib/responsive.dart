import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Responsive extends StatelessWidget {
  final Widget mobilescreenlayout;
  final Widget webscreenlayout;

const Responsive({ Key? key,required this.mobilescreenlayout,required this.webscreenlayout});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context ,constraints){
      if (constraints.maxWidth>900) {
        return webscreenlayout;
      } return mobilescreenlayout;
    });
  }
}