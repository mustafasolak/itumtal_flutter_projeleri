import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';


class SesCalici extends StatefulWidget {
  const SesCalici({Key? key}) : super(key: key);

  @override
  _SesCaliciState createState() => _SesCaliciState();
}

class _SesCaliciState extends State<SesCalici> {

  AudioPlayer audioPlayer = AudioPlayer();
  String url = "https://s3.amazonaws.com/scifri-episodes/scifri20181123-episode.mp3";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(onPressed: () {

          play() async {
            int result = await audioPlayer.play(url);
            if (result == 1) {
              // success
            }
          }
        },
          icon: Icon( Icons.play_circle_fill),
        )
      ],
    );
  }
}
