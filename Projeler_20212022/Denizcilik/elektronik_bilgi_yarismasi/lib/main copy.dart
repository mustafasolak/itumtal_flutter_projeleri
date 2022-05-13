import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  print("Firebase bağlandıldı");
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BilBakalimApp(),
    ),
  );
}

class BilBakalimApp extends StatefulWidget {
  @override
  State<BilBakalimApp> createState() => _BilBakalimAppState();
}

class _BilBakalimAppState extends State<BilBakalimApp> {
  List<String> questions = [
    "Direncin birimi Amper'dir",
    "Akımın birimi Volt'tur.",
    "Ampermetre ile akım ölçülür.",
    "Farad çok yüksek olduğu için as katları kullanılır.",
    "Akım, gerilim ve direnç arasındaki ilişkiyi gösteren kanuna Ohm Kanunu denir.",
  ];

  List<bool> answers = [
    false,
    false,
    true,
    true,
    true,
  ];

  int questionNumber = 0;
  int score = 0;
  int scoreIncrement = 20;

  answerQuestion(bool userAnswer) {
    // Checking user answer
    // correct answer
    if (userAnswer == answers[questionNumber]) {
      score += scoreIncrement;
    }

    setState(() {
      questionNumber++;
    });
    print(questionNumber);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          FirebaseFirestore.instance.collection("sorular").doc("soru3").set(
            {"soruicerik": "deneme sorusu", "sorucevap": false},
          );
        },
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.black12,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Bil Bakalım ?",
                    style: TextStyle(
                      color: Color.fromARGB(255, 176, 165, 72),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  //Spacer(),
                  CircleAvatar(
                    child: Text("$score"),
                  ),
                ],
              ),
              SizedBox(height: 35),
              Container(
                width: double.infinity,
                height: 200,
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 201, 184, 131),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  questions[questionNumber],
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "${questionNumber + 1}/${questions.length}",
                style: TextStyle(
                  color: Color.fromARGB(255, 216, 215, 203),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Row(
                children: [
                  Expanded(
                    child: FlatButton(
                      onPressed: () {
                        answerQuestion(true);
                      },
                      height: 60,
                      color: Colors.green,
                      child: Text(
                        "Doğru",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: FlatButton(
                      onPressed: () {
                        answerQuestion(false);
                      },
                      height: 60,
                      color: Colors.red,
                      child: Text(
                        "Yanlış",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
