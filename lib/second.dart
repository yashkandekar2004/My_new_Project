import 'package:flutter/material.dart';
import 'package:img/third.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'home',
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Flutter  app")),
        ),
        body: Column(
          children: [
            Container(
              child: Center(
                child: Text(
                  'Welcome to the flutter..... ',
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    fontSize: 50.0,
                    fontStyle: FontStyle.italic,
                    color: Colors.deepPurple,
                  ),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => third()));
                },
                child: Text("Go to Next Page"))
          ],
        ),
        drawer: Drawer(
          child: Text(
            "Flutter Discription",
            style: TextStyle(
              fontSize: 50,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ),
    );
  }
}
