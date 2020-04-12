import 'package:Quizzy/pages/quiz.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  List<Widget> scorekeeper = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[900],
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Card(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.1),
                color: Colors.deepPurple[900],
                elevation: 0,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.deepPurple[900],
                      borderRadius: BorderRadius.circular(20)),
                  padding: EdgeInsets.all(30),
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width * 0.75,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.question_answer,
                        color: Colors.white,
                        size: 150,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Text(
                        'Quizzy',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontSize: 26,
                        ),
                      ),
                      SizedBox(height: 15,),
                      Text(
                        'Test your Programming Knowledge.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w300
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Column(
              children: <Widget>[
                 Text(
                        "Made with ♥ by ishandeveloper",
                        style: TextStyle(
                          color: Colors.grey[200],
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w100
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10,),
                Text(
                        "By clicking Let's play, you agree to our Privacy Policy.",
                        style: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 9,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w100
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10,),
                MaterialButton(
                  color: Colors.white,
                  padding: EdgeInsets.all(15),
                  minWidth: MediaQuery.of(context).size.width * 0.75,
                  child: Text(
                    "Let's Play !",
                    style: TextStyle(fontSize: 20),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => QuizHome()));
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
