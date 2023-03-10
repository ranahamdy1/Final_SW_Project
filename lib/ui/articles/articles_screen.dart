import 'package:flutter/material.dart';
import 'package:sw_project1/ui/articles/water_screen.dart';

import '../diet_screen.dart';
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 52),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FoodScreen()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(const Color(0xff37d461)),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(horizontal: 90, vertical: 20)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(27))),
                ),
                child: const Text(
                  "Food",
                  style: TextStyle(fontSize: 24),
                ),
              ),
              const SizedBox(height: 52),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WaterScreen()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(const Color(0xff37d461)),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(horizontal: 90, vertical: 20)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(27))),
                ),
                child: const Text(
                  "water",
                  style: TextStyle(fontSize: 24),
                ),
              ),
              const SizedBox(height: 52),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GeneralTipsScreen()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(const Color(0xff37d461)),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(horizontal: 66, vertical: 20)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(27))),
                ),
                child: const Text(
                  "General Tips",
                  style: TextStyle(fontSize: 22),
                ),
              ),
              const SizedBox(height: 52),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DietScreen()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(const Color(0xff37d461)),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(horizontal: 90, vertical: 20)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(27))),
                ),
                child: const Text(
                  "Diet",
                  style: TextStyle(fontSize: 24),
                ),
              ),
              const SizedBox(height: 52),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FoodScreen()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(const Color(0xff37d461)),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(horizontal: 90, vertical: 20)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(27))),
                ),
                child: const Text(
                  "Food",
                  style: TextStyle(fontSize: 24),
                ),
              ),
              const SizedBox(height: 52),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoseWeightScreen()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(const Color(0xff37d461)),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(horizontal: 60, vertical: 20)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(27))),
                ),
                child: const Text(
                  "Lose Weight",
                  style: TextStyle(fontSize: 24),
                ),
              ),
              const SizedBox(height: 52),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GainWeightScreen()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(const Color(0xff37d461)),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(horizontal: 60, vertical: 20)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(27))),
                ),
                child: const Text(
                  "Gain Weight",
                  style: TextStyle(fontSize: 24),
                ),
              ),
              const SizedBox(height: 52),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FoodScreen()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(const Color(0xff37d461)),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(horizontal: 90, vertical: 20)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(27))),
                ),
                child: const Text(
                  "Food",
                  style: TextStyle(fontSize: 24),
                ),
              ),
              const SizedBox(height: 52),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FoodScreen()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(const Color(0xff37d461)),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(horizontal: 90, vertical: 20)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(27))),
                ),
                child: const Text(
                  "Food",
                  style: TextStyle(fontSize: 24),
                ),
              ),
              const SizedBox(height: 52),
            ],
          ),
        ),
      ),
    ));
  }
}
