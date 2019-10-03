import 'dart:math';

import 'package:day_4_random_word_assignment/words.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('RandomPasswords'),
        ),
        body: randomWordPage(), // Should be PasswordGenerator()
      ),
    ),
  );
}

List words = Words.list; // you are given list of words

// Create a stateful widget called `PasswordGenerator` here

class randomWordPage extends StatefulWidget {
  @override
  _randomWordPageState createState() => _randomWordPageState();
}

class _randomWordPageState extends State<randomWordPage> {
  String randomWord1 = words[0];
  String randomWord2 = words[1];
  String randomWord3 = words[2];

  changeWords() {
    setState(() {
      randomWord1 = words[Random().nextInt(500)];
      randomWord2 = words[Random().nextInt(500)];
      randomWord3 = words[Random().nextInt(500)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                '${randomWord1}  ${randomWord2}  ${randomWord3}',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            FlatButton(
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: changeWords,
              child: Text('New Password', style: TextStyle(fontSize: 15),),
            )
          ],
        ),
      ),
    );
  }
}
