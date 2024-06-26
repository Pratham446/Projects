import 'package:clone/Screens/mobilescreenlayout.dart';
import 'package:clone/Screens/webscreenlayout.dart';
import 'package:clone/colors.dart';
import 'package:clone/responsive.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroundColor),
      home: const Responsive(mobilescreenlayout:mobile() ,webscreenlayout:web() ,),
    );
  }
}
