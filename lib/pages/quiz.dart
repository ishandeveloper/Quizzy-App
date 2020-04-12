import 'package:flutter/material.dart';

import 'about.dart';

class QuizHome extends StatefulWidget {
  @override
  _QuizHomeState createState() => _QuizHomeState();
}

class _QuizHomeState extends State<QuizHome> {
  List<Widget> scorekeeper = [];
  List<String> questions = [
    'This is a dummy question. Are you feeling good?',
    'This is another dummy question. Are you feeling good?',
    'This is third dummy question. Are you feeling good?',
    'This is fourth dummy question. Are you feeling good?',
    'This is 6 dummy question. Are you feeling good?',
    'This is 7 dummy question. Are you feeling good?',
    'This is 8 dummy question. Are you feeling good?',
    'This is 9 dummy question. Are you feeling good?',
    'This is last dummy question. Are you feeling good?',
    'This is 6 dummy question. Are you feeling good?',
    'This is 7 dummy question. Are you feeling good?',
    'This is 8 dummy question. Are you feeling good?',
  ];
  List<bool> answers = [
    true,
    false,
    true,
    true,
    false,
    true,
    true,
    false,
    false,
    false,
    false
  ];
  var progress;
  var selectedquestion = 'This is a dummy question. Are you feeling good?';
  int i = 0;

  void evaluateAnswerForTrue() {
    if (answers[i] == true) {
      correct();
    } else {
      wrong();
    }
  }

  void evaluateAnswerForFalse() {
    if (answers[i] == false) {
      correct();
    } else {
      wrong();
    }
  }

  void correct() {
    setState(() {
      progress = progress + 1 / questions.length;
      if (i != questions.length) {
        scorekeeper.add(
          Icon(
            Icons.check,
            color: Colors.green[300],
          ),
        );
        scorekeeper.add(
          SizedBox(
            width: 10,
          ),
        );

        selectedquestion = questions[++i];
      }
    });
  }

  void wrong() {
    setState(() {
      if (i != questions.length) {
        progress = progress + 1 / questions.length;
        scorekeeper.add(
          Icon(
            Icons.close,
            color: Colors.red[400],
          ),
        );
        scorekeeper.add(
          SizedBox(
            width: 10,
          ),
        );

        selectedquestion = questions[++i];
      }
    });
  }

  @override
  @override
  void initState() {
    super.initState();
    progress = 1 / questions.length;
  }

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
      body: Column(
        children: <Widget>[
          LinearProgressIndicator(
            backgroundColor: Colors.deepPurple[900],
            valueColor: new AlwaysStoppedAnimation<Color>(Colors.white),
            value: progress,
          ),
          Card(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
            color: Colors.deepPurple[900],
            elevation: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.deepPurple[700],
                  borderRadius: BorderRadius.circular(20)),
              padding: EdgeInsets.all(30),
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 0.75,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Question',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Text(
                    selectedquestion,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontSize: 26,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: <Widget>[
                MaterialButton(
                  color: Colors.white,
                  padding: EdgeInsets.all(15),
                  minWidth: MediaQuery.of(context).size.width * 0.75,
                  child: Text(
                    'True',
                    style: TextStyle(fontSize: 20),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  onPressed: () {
                    evaluateAnswerForTrue();
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                MaterialButton(
                  color: Colors.white,
                  padding: EdgeInsets.all(15),
                  minWidth: MediaQuery.of(context).size.width * 0.75,
                  child: Text(
                    'False',
                    style: TextStyle(fontSize: 20),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  onPressed: () {
                    evaluateAnswerForFalse();
                  },
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: <Widget>[
                // Container(
                //   color: Colors.black,
                //   width: 100,
                //   height: 50,
                // ),
                Expanded(
                  child: Container(
                    child: Row(
                      // scrollDirection: Axis.horizontal,
                      children: scorekeeper,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 15),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
