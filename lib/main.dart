import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MaterialApp(
    home: homepage(),
    debugShowCheckedModeBanner: false,
  ));
}

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    void playsound(int notenum) {
      final player = AudioCache();
      player.play('assets_note$notenum.wav');
    }

    Expanded buildKey({Color color, int notenum}) {
      return Expanded(
        child: FlatButton(
          onPressed: () {
            playsound(notenum);
          },
          color: color,
        ),
      );
    }

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildKey(color: Colors.red, notenum: 1),
          buildKey(color: Colors.orange, notenum: 2),
          buildKey(color: Colors.yellow, notenum: 3),
          buildKey(color: Colors.green, notenum: 4),
          buildKey(color: Colors.teal, notenum: 5),
          buildKey(color: Colors.blue, notenum: 6),
          buildKey(color: Colors.purple, notenum: 7),
        ],
      ),
    );
  }
}
