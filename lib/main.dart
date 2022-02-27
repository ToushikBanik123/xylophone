import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int number){
    final player = AudioCache();
    player.play('note$number.wav');
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
              Expanded(
                child: TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(16.0),
                  primary: Colors.white,
                  backgroundColor: Colors.red,
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: (){
                  playSound(1);
                },
                child: const Text('click me'),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    primary: Colors.white,
                    backgroundColor: Colors.orange,
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: (){
                    playSound(2);
                  },
                  child: const Text('click me'),),
              ),
              Expanded(
                child: TextButton( 
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    primary: Colors.white,
                    backgroundColor: Colors.yellow,
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: (){
                    playSound(3);
                  },
                  child: const Text('click me'),),
              ),
              Expanded(
                child: TextButton( 
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    primary: Colors.white,
                    backgroundColor: Colors.green,
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: (){
                    playSound(4);
                  },
                  child: const Text('click me'),),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    primary: Colors.white,
                    backgroundColor: Colors.teal,
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: (){
                    playSound(5);
                  },
                  child: const Text('click me'),),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    primary: Colors.white,
                    backgroundColor: Colors.blue,
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: (){
                    playSound(6);
                  },
                  child: const Text('click me'),),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    primary: Colors.white,
                    backgroundColor: Colors.purple,
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: (){
                    playSound(7);
                  },
                  child: const Text('click me'),),
              ),
            ],

        ),
        ),
      ),
    );
  }
}


