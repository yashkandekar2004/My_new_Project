import 'dart:html';

import 'package:flutter/material.dart';
import 'package:img/first.dart';
import 'package:img/spalsh.dart';
import 'package:img/third.dart';
import 'second.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    title: "Awsome App",
    home: spalsh(),
    themeMode: ThemeMode.light,
    theme: ThemeData(primarySwatch: Colors.deepOrange),
    darkTheme: ThemeData(
      brightness: Brightness.dark,
    ),
  ));
}

class routes extends StatelessWidget {
  const routes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => first(),
        "/.": (context) => Homepage(),
        "/..": (context) => third(),
      },
    );
  }
}
