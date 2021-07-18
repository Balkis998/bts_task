import 'package:flutter/material.dart';
import 'package:flutter_task/Auth/components/button.dart';
import 'package:flutter_task/Auth/log_in.dart';
import 'package:flutter_task/Auth/sign_up.dart';

class FirstPage extends StatefulWidget {
  static const String id = 'FirstPage';
  FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Image(
                image: AssetImage('images/welcome.gif'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => Login()));
              },
              child: Button(bText: 'Sign In'),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => SignUp()));
              },
              child: Button(bText: 'Sign Up'),
            ),
          ],
        ),
      ),
    ));
  }
}
