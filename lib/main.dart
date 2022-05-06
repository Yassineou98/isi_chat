// ignore_for_file: use_key_in_widget_constructors

import 'package:chat_isi_idisc/screens/chat_screen.dart';
import 'package:chat_isi_idisc/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:chat_isi_idisc/screens/welcome_screen.dart';
import 'package:chat_isi_idisc/screens/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) {
          return WelcomeScreen();
        },
         LoginScreen.id: (context) {
          return LoginScreen();
         },
         RegistrationScreen.id: (context) {
           return RegistrationScreen();
         },
         ChatScreen.id: (context) {
           return ChatScreen();
         }
      },
    );
  }
}
