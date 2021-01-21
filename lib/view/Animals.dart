import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class Animals extends StatefulWidget {
  @override
  _AnimalsState createState() => _AnimalsState();
}

class _AnimalsState extends State<Animals> {

  AudioCache _audioCache = AudioCache(prefix: "audios/");

  _execute(String nameAudio){

    _audioCache.play( nameAudio + ".mp3");

  }

  @override
  void initState() {
    super.initState();
    _audioCache.loadAll([
      "cao.mp3", "gato.mp3", "leao.mp3",
      "macaco.mp3", "ovelha.mp3", "vaca.mp3",
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
      childAspectRatio: MediaQuery.of(context).size.aspectRatio * 2,
      children: [
        GestureDetector(
          onTap: _execute("cao"),
          child: Image.asset("assets/images/cao.png"),
        ),
        GestureDetector(
          onTap: _execute("gato"),
          child: Image.asset("assets/images/gato.png"),
        ),
        GestureDetector(
          onTap: _execute("leao"),
          child: Image.asset("assets/images/leao.png"),
        ),
        GestureDetector(
          onTap: _execute("macaco"),
          child: Image.asset("assets/images/macaco.png"),
        ),
        GestureDetector(
          onTap: _execute("ovelha"),
          child: Image.asset("assets/images/ovelha.png"),
        ),
        GestureDetector(
          onTap: _execute("vaca"),
          child: Image.asset("assets/images/vaca.png"),
        ),
      ],
    );
  }
}
