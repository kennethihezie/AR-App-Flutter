import 'dart:io';
import 'package:flutter/material.dart';
import 'package:wimtorq/view/android_ar_screen.dart';
import 'package:wimtorq/view/ios_ar_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  final title = "ArScreen";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wimtorq App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Platform.isIOS ? IosArScreen(title: title) : AndroidArScreen(title: title),
    );
  }
}
