import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'dart:math';

//UrlSource: get the audio from a remote URL from the Internet
//DeviceFileSource: access a file in the user's device, probably selected by a file picker
//AssetSource: play an asset bundled with your app, normally within the assets directory
//BytesSource (only some platforms): pass in the bytes of your audio directly (read it from anywhere).
//דוגמא:
//// add this in imports
// import 'package:audioplayers/audioplayers.dart';
// // play audio
// final player = AudioPlayer();
// player.play(AssetSource('note1.wav'));
void main() => runApp(XylpohoneApp());

class XylpohoneApp extends StatelessWidget {
  void playsaund(int soundNum) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNum.wav'));
  }

  Expanded buildS(Color color,int numSound) {
    return Expanded(
      child: Container(
        color:color,
        child: TextButton(
          onPressed: () {
            playsaund(numSound);
          },
          child: Text(""),
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
            buildS(Colors.red,1),
            buildS(Colors.orange,2),
            buildS(Colors.yellowAccent,3),
            buildS(Colors.green,4),
            buildS(Colors.teal,5),
            buildS(Colors.blueAccent,6),
            buildS(Colors.purple,7)

          ],
        ),
      ),
    ));
  }
}
