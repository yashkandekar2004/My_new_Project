import 'package:flutter/material.dart';

class third extends StatelessWidget {
  const third({super.key});

  
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