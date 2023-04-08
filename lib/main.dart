import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(yash());
}

class yash extends StatelessWidget {
  const yash({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IMAGE',
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('flutter logo'),
          ),
        ),
        body: Center(
          child: Image.asset('lib/image/fl.jpg'),
        ),
      ),
    );
  }
}
