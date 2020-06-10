import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  Expanded noteBar(int noteNumber, Color color){
    return Expanded(
      child: FlatButton(
        color: color,
        child:null,
        onPressed: (){
          final player = AudioCache();
          player.play('note$noteNumber.wav');
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
              noteBar(1,Colors.red),
              noteBar(2,Colors.orange),
              noteBar(3,Colors.yellow),
              noteBar(4,Colors.green),
              noteBar(5,Colors.teal),
              noteBar(6,Colors.blue),
              noteBar(7,Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
