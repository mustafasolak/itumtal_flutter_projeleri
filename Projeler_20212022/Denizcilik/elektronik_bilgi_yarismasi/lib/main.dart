import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: QuizApp(),
      ),
    );

class QuizApp extends StatefulWidget {
  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  List<String> questions = [
    "Filikaların rengi mavi olur.",
    "Pruva denizcilikte geminin ön tarafını ifade eder.",
    "16 adet denizci bağı vardır.",
    "Sancakta yeşil renk ışık yanar.",
    "Uzun olur gemilerin direği aman aman",
  ];

  List<bool> answers = [
    false,
    true,
    false,
    true,
    true,
  ];

  int questionNumber = 0;

  double score = 0;
  double scoreIncrement = 0;

  bool finished = false;

  answerQuestion(bool userAnswer) {
    // if users answer is correct
    if (userAnswer == answers[questionNumber]) {
      score += scoreIncrement;
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scoreIncrement = 100 / questions.length;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Quiz App',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    CircleAvatar(
                      child: Text("$score"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  width: double.infinity,
                  height: 200,
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.all(15),
                  child: Text(
                    questions[questionNumber],
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.green.shade300,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "${questionNumber + 1}/${questions.length}",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: FlatButton(
                        color: Colors.black,
                        onPressed: () {
                          setState(() {
                            if (!finished) {
                              if (questionNumber == questions.length - 1) {
                                answerQuestion(true);
                                finished = true;
                                showDialog<String>(
                                  context: context,
                                  // dialog penceresinin dışına tıklandığında dialog penceresinin kapanmasını önler
                                  barrierDismissible: false,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                    title: const Text('Bilgi'),
                                    content: Text(
                                        "Yarışma bitti!\nPuanınız : $score"),
                                    backgroundColor: Colors.white, 
                                    elevation: 20,
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () {
                                          setState(() {});
                                          Navigator.pop(context, 'OK');
                                        },
                                        child: const Text('Yeniden Başlat'),
                                      ),
                                    ],
                                  ),
                                );
                              } else {
                                answerQuestion(true);
                                questionNumber++;
                              }
                            }
                          });

                          print(questionNumber);
                        },
                        child: Text(
                          "Doğru",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: FlatButton(
                        color: Colors.red,
                        onPressed: () {
                          setState(() {
                            if (!finished) {
                              // if user arrived to last question
                              if (questionNumber == questions.length - 1) {
                                answerQuestion(true);
                                finished = true;
                                showDialog<String>(
                                  context: context,
                                  // dialog penceresinin dışına tıklandığında dialog penceresinin kapanmasını önler
                                  barrierDismissible: false,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                    title: const Text('Bilgi'),
                                    content: Text(
                                        "Yarışma bitti!\nPuanınız : $score"),
                                    backgroundColor: Colors.white,
                                    elevation: 20,
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () {
                                          setState(() {});
                                          Navigator.pop(context, 'OK');
                                        },
                                        child: const Text('Yeniden Başlat'),
                                      ),
                                    ],
                                  ),
                                );
                              } else {
                                answerQuestion(false);
                                questionNumber++;
                              }
                            }
                          });

                          print(questionNumber);
                        },
                        child: Text(
                          "Yanlış",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
