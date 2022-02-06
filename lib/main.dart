import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(DinosaurApp());

class DinosaurApp extends StatelessWidget {

  void playSound(String dinoName) {
    final player = AudioCache();
    player.play('dino$dinoName.mp3');
  }

  Expanded buildKey(String dinoName) {
    return Expanded(
      child: FlatButton(
        onPressed: (){
          playSound(dinoName);
        },
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image.asset('images/dino$dinoName.webp'),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          backgroundColor: Colors.red.shade700,
          title: Text(
            'Dinosaur Sounds',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25.0,
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey("TRex"),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    'Tyrannosaurus',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                child: Divider(
                  color: Colors.red.shade900,
                ),
              ),
              buildKey("Brachio"),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    'Brachiosaurus',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                child: Divider(
                  color: Colors.red.shade900,
                ),
              ),
              buildKey("Raptor"),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    'Velociraptor',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
