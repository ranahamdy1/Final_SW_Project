import 'package:flutter/material.dart';
import 'package:sw_project1/ui/articles/water_screen.dart';

import '../../shared/shared_screen.dart';
import '../diet_screen.dart';
import 'Daily_recommended_foods.dart';
import 'diet/gain_weight.dart';
import 'diet/lose_weight.dart';
import 'food.dart';
import 'general_tips.dart';

class ArticleScreen extends StatefulWidget {
  const ArticleScreen({Key? key}) : super(key: key);

  @override
  State<ArticleScreen> createState() => _ArticleScreenState();
}

class _ArticleScreenState extends State<ArticleScreen> {
  List elevatedButton = [
    {"name": "Food", "screens": FoodScreen()},
    {"name": "water", "screens": WaterScreen()},
    {"name": "General Tips", "screens": GeneralTipsScreen()},
    {"name": "Diet", "screens": DietScreen()},
    {"name": "Lose Weight", "screens": LoseWeightScreen()},
    {"name": "Gain Weight", "screens": GainWeightScreen()},
    {"name": "Daily Recommended Foods", "screens": DailyRecommendedFoods()},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        /*appBar: AppBar(
          backgroundColor: const Color(0xff37d461),
          title: const Text("Articles"),
          centerTitle: true,
        ),*/
        body: Center(
      child: Container(
        child: ListView.builder(
          itemCount: elevatedButton.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(18.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            elevatedButton[index]["screens"]!),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(greenColor),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(horizontal: 60, vertical: 20)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(27))),
                ),
                child: Text(
                  elevatedButton[index]["name"],
                  style: TextStyle(fontSize: 24),
                ),
              ),
            );
          },
        ),
      ),
    ));
  }
}
