import 'package:flutter/material.dart';
import 'about.dart';

// class ScoreScreen extends StatefulWidget {
//   final int a;
//   final int b;
//   ScoreScreen(this.a,this.b);
//   @override
//   _ScoreScreenState createState() => _ScoreScreenState();
// }

class ScoreScreen extends StatelessWidget {
  final int a;
  final int b;
  ScoreScreen({this.a,this.b});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[900],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[900],
        elevation: 0,
        leading: Icon(Icons.question_answer),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Quizzy',
              style: TextStyle(fontFamily: 'Poppins'),
            ),
            Text(
              "by ishandeveloper",
              style: TextStyle(fontFamily: 'Poppins', fontSize: 8),
            ),
          ],
        ),
        actions: <Widget>[
          GestureDetector(
            child: Container(
              child: Icon(Icons.info),
              margin: EdgeInsets.only(right: 20),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AboutPage()));
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Card(
              margin:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
              color: Colors.deepPurple[900],
              elevation: 0,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.deepPurple[700],
                    borderRadius: BorderRadius.circular(200)),
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width * 0.2),
                height: MediaQuery.of(context).size.width * 0.75,
                width: MediaQuery.of(context).size.width * 0.75,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Congratulations !',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Text(
                      'You Scored',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontSize: 22,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Text(
                      '$a / $b',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontSize: 42,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Column(
              children: <Widget>[
                MaterialButton(
                  color: Colors.white,
                  padding: EdgeInsets.all(15),
                  minWidth: MediaQuery.of(context).size.width * 0.75,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.share),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Share Results',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  onPressed: () {},
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                MaterialButton(
                  color: Colors.white,
                  padding: EdgeInsets.all(15),
                  minWidth: MediaQuery.of(context).size.width * 0.75,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.replay),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Replay Quiz',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
