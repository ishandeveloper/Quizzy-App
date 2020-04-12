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
        title: Text(
          'Quizzy',
          style: TextStyle(fontFamily: 'Poppins'),
        ),
        actions: <Widget>[
          GestureDetector(
            child: Container(
              child: Icon(Icons.info),
              margin: EdgeInsets.only(right: 20),
            ),
            onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutPage()));
            },
          )
        ],
      ),
    );
  }
}
