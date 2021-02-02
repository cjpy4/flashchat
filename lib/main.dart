import 'package:flutter/material.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/screens/chat_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Firebase.initializeApp();
    return MaterialApp(
      initialRoute: WelcomeScreen.navID,
      routes: {
        WelcomeScreen.navID: (context) => WelcomeScreen(),
        RegistrationScreen.navID: (context) => RegistrationScreen(),
        LoginScreen.navID: (context) => LoginScreen(),
        ChatScreen.navID: (context) => ChatScreen(),
      },
    );
  }
}
