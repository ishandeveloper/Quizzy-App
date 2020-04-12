import 'package:flutter/material.dart';

class QuizHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[900],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[900],
        elevation: 0,
        leading: Icon(Icons.question_answer),
        title: Text('Quiz', style: TextStyle(fontFamily: 'Poppins'),),
      ),
    );
  }
}