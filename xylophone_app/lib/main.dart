import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(
      Xylophone(),
    );

class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);

  void playsound(int soundnumber) {
    final player = AudioCache();
    player.play('note$soundnumber.wav');
  }

  Expanded buildkey({Color: Colors, required int soundnumber}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playsound(soundnumber);
        },
        child: Text(''),
        style: TextButton.styleFrom(
          backgroundColor: Color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildkey(Color: Colors.red, soundnumber: 1),
              buildkey(Color: Colors.orange, soundnumber: 2),
              buildkey(Color: Colors.yellow, soundnumber: 3),
              buildkey(Color: Colors.green, soundnumber: 4),
              buildkey(Color: Colors.teal, soundnumber: 5),
              buildkey(Color: Colors.blue, soundnumber: 6),
              buildkey(Color: Colors.purple, soundnumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}

class $sound {}

class $soundnumber {}
