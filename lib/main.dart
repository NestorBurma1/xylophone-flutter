import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded expand(Color color, int number) {
    return Expanded(
      flex: 1,
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(number);
        },
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
            children: <Widget>[
              expand(Colors.red, 1),
              expand(Colors.orange, 2),
              expand(Colors.yellow, 3),
              expand(Colors.green, 4),
              expand(Colors.teal, 5),
              expand(Colors.blue, 6),
              expand(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
