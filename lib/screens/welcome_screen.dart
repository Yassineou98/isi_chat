// ignore_for_file: prefer_const_constructors

import 'package:chat_isi_idisc/screens/login_screen.dart';
import 'package:chat_isi_idisc/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:chat_isi_idisc/components/roundedbutton.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

// ignore: use_key_in_widget_constructors
class WelcomeScreen extends StatefulWidget {
  static String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(duration: Duration(seconds: 5), vsync: this);
    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white)
        .animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              child:Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/isi_logo.png'),
                    height: 100.0,
                  ),
                ),
        /*DefaultTextStyle(
          style: const TextStyle(
            fontSize: 45.0,
            fontWeight: FontWeight.w900,
            color: Colors.blue,
          ),
               child: AnimatedTextKit(
                   animatedTexts: [
                     TypewriterAnimatedText('ISI CHAT'),
                   ]
                ),
            ),*/
      ),
            SizedBox(
              height: 48.0,
            ),
            RoundedButton(
              title: 'Log In',
              colour: Colors.lightBlueAccent,
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
            ),
            RoundedButton(
              title: 'Register',
              colour: Colors.blueAccent,
              onPressed: () {
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
