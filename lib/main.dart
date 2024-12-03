import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());
class XylophoneApp extends StatelessWidget {
  void sound(int soundplayednumb){
    final player = AudioPlayer();
    player.play(AssetSource('note$soundplayednumb.wav'));
  }
  Expanded buildkey(Color color,int soundnumb ){
    return Expanded(
      child: TextButton(
        onPressed: (){
         sound(soundnumb);
        },
        child:const Text(''),
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
        ),
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
              buildkey(Colors.red,1),
              buildkey(Colors.orange,2),
              buildkey(Colors.yellow,3),
              buildkey(Colors.green,4),
              buildkey(Colors.teal,5),
              buildkey(Colors.blue,6),
              buildkey(Colors.purple,7),
            ],
          ),
        ),
      ),
    );
  }
}
