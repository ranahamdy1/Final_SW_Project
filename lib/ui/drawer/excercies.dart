import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ExercisesScreen extends StatefulWidget {
  const ExercisesScreen({Key? key}) : super(key: key);

  @override
  State<ExercisesScreen> createState() => _ExercisesScreenState();
}

class _ExercisesScreenState extends State<ExercisesScreen> {
  final YoutubePlayerController youtubePlayerController =
      YoutubePlayerController(
          initialVideoId: YoutubePlayer.convertUrlToId(
              "https://www.youtube.com/watch?v=ziOpBWFPlyI")!);
  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: youtubePlayerController,
      ),
      builder: (context, player) {
        return Center(
          child: Column(
            children: [player],
          ),
        );
      },
    );
  }
}

/*import '../../shared/shared_screen.dart';

class ExercisesScreen extends StatefulWidget {
  const ExercisesScreen({Key? key}) : super(key: key);

  @override
  State<ExercisesScreen> createState() => _ExercisesScreenScreenState();
}

class _ExercisesScreenScreenState extends State<ExercisesScreen> {
  List exercises = [
    {"image": "assets/images/7.jpeg"},
    {"image": "assets/images/9.jpeg"},
    {"image": "assets/images/10.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: greenColor,
      ),
      body: ListView.builder(
        itemCount: exercises.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              width: 450,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey[300],
              ),
              child: Center(child: Image.asset(exercises[index]["image"]!)),
            ),
          );
        },
      ),
    );
  }
}*/
