import 'package:flutter/material.dart';
import 'package:img/second.dart';

class first extends StatelessWidget {
  const first({super.key});

  @override
  Widget build(BuildContext context) {
    var emailtext = TextEditingController();
    var passtext = TextEditingController();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "home",
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Login_Form"),
          ),
        ),
        body: Center(
          child: Container(
            width: 600,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  " Flutter Login",
                  style: TextStyle(
                      fontSize: 30,
                      fontStyle: FontStyle.italic,
                      color: Colors.cyan,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 40,
                ),
                TextField(
                  keyboardType: TextInputType.phone,
                  controller: emailtext,
                  decoration: InputDecoration(
                      hintText: 'Enter Email',
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.deepOrange,
                            width: 2,
                          )),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 82, 86, 93),
                          width: 2,
                        ),
                      ),
                      prefixIcon: IconButton(
                        icon: Icon(
                          Icons.email,
                          color: Colors.orangeAccent,
                        ),
                        onPressed: () {},
                      )),
                ),
                SizedBox(height: 5),
                TextField(
                  controller: passtext,
                  obscureText: true,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                    hintText: 'Enter Password',
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 115, 34, 255),
                          width: 2,
                        )),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 39, 23, 24),
                          width: 2,
                        )),
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.remove_red_eye,
                        color: Colors.blue,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Homepage()));
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                          height: 2,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
