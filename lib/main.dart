
import 'package:flutter/material.dart';

import 'pages/splash.dart';

void main() => (runApp(QuizApp()));

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SplashScreen(),
    );
  }
}
