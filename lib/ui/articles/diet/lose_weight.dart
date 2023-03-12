import 'package:flutter/material.dart';

class LoseWeightScreen extends StatefulWidget {
  const LoseWeightScreen({Key? key}) : super(key: key);

  @override
  State<LoseWeightScreen> createState() => _LoseWeightScreenState();
}

class _LoseWeightScreenState extends State<LoseWeightScreen> {
  List list = [
    {
      "week": "First week:",
      "Breakfast": "Breakfast:",
      "BreakfastBody": "2 boiled eggs - a loaf of toast - a cup of green tea.",
      "Lunch": "Lunch:",
      "LunchBody":
          "grilled or boiled chicken breast - 3 tablespoons of rice - a large mixed salad dish.",
      "Dinner": "Dinner:",
      "DinnerBody":
          " a large cup of fat-free yogurt - flaxseed - a large mixed salad plate - two fruits of your choice.",
    },
    {
      "week": "second week:",
      "Breakfast": "Breakfast:",
      "BreakfastBody":
          "a loaf of toast - a cup of milk, provided that it is fat-free and without sugar - a fruit of your choice - a cup of green tea.",
      "Lunch": "Lunch:",
      "LunchBody":
          "a can of tuna without oil - a large mixed salad dish - two fruits of your choice.",
      "Dinner": "Dinner:",
      "DinnerBody": " vegetable soup without broth - a cup of fat-free yogurt.",
    },
    {
      "week": "third week:",
      "Breakfast": "Breakfast:",
      "BreakfastBody":
          "a piece of cottage cheese - two cucumbers - 4 tablespoons of beans without oil.",
      "Lunch": "Lunch:",
      "LunchBody":
          "two grilled fish - a large mixed salad dish - 3 tablespoons of rice or pasta - pineapple juice without sugar.",
      "Dinner": "Dinner:",
      "DinnerBody": "a plate of vegetable soup only.",
    },
    {
      "week": "fourth week:",
      "Breakfast": "Breakfast:",
      "BreakfastBody":
          "a cup of fat-free yogurt - flax seeds - a loaf of toast - 5 nuts - one grapefruit.",
      "Lunch": "Lunch:",
      "LunchBody": " lentil soup without meat - two cucumbers.",
      "Dinner": "Dinner:",
      "DinnerBody":
          "a loaf of bread on toast - a plate of yogurt salad with cucumber added.",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff37d461),
        elevation: 0.0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              size: 30,
            )),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff37d461),
                //Color(0xff9e3609),
                Color(0xffc3c9c5),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: ListView.builder(
              itemCount: list.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Text(
                      list[index]["week"]!,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Color(0xff0a5e1f)),
                    ),
                    Text(
                      list[index]["Breakfast"]!,
                      style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                    Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Text(
                        list[index]["BreakfastBody"]!,
                        style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    Text(
                      list[index]["Lunch"]!,
                      style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                    Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Text(
                        list[index]["LunchBody"]!,
                        style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    Text(
                      list[index]["Dinner"]!,
                      style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text(
                        list[index]["DinnerBody"]!,
                        style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ],
                );
              }),
        ),
      ),
    );
  }
}
