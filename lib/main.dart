import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int number){
    final player = AudioCache();
    player.play('note$number.wav');
  }
  Expanded buildKey({ required Color color,required int soundNumber}){
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(16.0),
          primary: Colors.white,
          backgroundColor: color,
          textStyle: const TextStyle(fontSize: 20),
        ),
        onPressed: (){
          playSound(soundNumber);
        },
        child: const Text('Click me'),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.orange,soundNumber: 2),
              buildKey(color: Colors.yellow,soundNumber: 3),
              buildKey(color: Colors.green,soundNumber: 4),
              buildKey(color: Colors.teal,soundNumber: 5),
              buildKey(color: Colors.blue,soundNumber: 6),
              buildKey(color: Colors.purple,soundNumber: 7),
            ],

        ),
        ),
      ),
    );
  }
}


