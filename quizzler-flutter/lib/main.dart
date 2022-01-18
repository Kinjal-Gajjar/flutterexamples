import 'package:flutter/material.dart';
import 'package:quizzler/quizz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() => runApp(Quizzler());
QuizzBrain quizzBrain = QuizzBrain();

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scorekeeper = [];
  int score = 0;

  void checkAnswer(bool userpickedAns) {
    bool correctens = quizzBrain.getQuestionAns();
    setState(() {
      if (quizzBrain.isFinished() == true) {
        Alert(
          context: context,
          title: 'Finished',
          desc: 'You\'ve reached the end of the quiz .Score: $score / 13',
        ).show();

        score = 0;
        quizzBrain.reset();

        scorekeeper = [];
      } else {
        if (userpickedAns == correctens) {
          if (score < 0) {
            score = 0;
          }
          score++;
          scorekeeper.add(Icon(
            Icons.check,
            color: Colors.green,
          ));
        } else {
          scorekeeper.add(Icon(
            Icons.close,
            color: Colors.red,
          ));
        }

        quizzBrain.nextquentions();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizzBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              onPressed: () {
                checkAnswer(true);
              },
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              onPressed: () {
                checkAnswer(false);
              },
              child: Text(
                'false',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
              ),
            ),
          ),
        ),
        Row(
          children: scorekeeper,
        ),
      ],
    );
  }
}
