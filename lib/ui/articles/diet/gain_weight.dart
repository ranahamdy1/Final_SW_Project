import 'package:flutter/material.dart';

class GainWeightScreen extends StatefulWidget {
  const GainWeightScreen({Key? key}) : super(key: key);

  @override
  State<GainWeightScreen> createState() => _GainWeightScreenState();
}

class _GainWeightScreenState extends State<GainWeightScreen> {
  List list = [
    {
      "week": " 4 weeks:",
      "Breakfast": "Breakfast:",
      "BreakfastBody":
          "2 fried eggs or eat a plate of beans with some olive oil added "
              "* A whole loaf of my country * French fries in oil (medium fruit) "
              "* A dish of balila with yogurt and nuts added Have fun between breakfast and lunch "
              "(take it around 11 o'clock) * A plate of wheat bailalah",
      "Lunch": "Lunch:",
      "LunchBody": "Rice or stuffed or 2 large baladi loaves "
          "* Do not neglect adding vegetables foundry or sautéed in butter to your meal (dish) "
          "* Eat fried eggs like chicken, fish or meat "
          "* Eat your green salad at the end of your meal, not the beginning"
          "You ask to eat it between meal and dinner at about 5 o'clock."
          "Drink a large glass of milk and add a tablespoon of nourishing bee honey"
          "With the possibility of eating two pieces of baked goods or sugary cake",
      "Dinner": "Dinner:",
      "DinnerBody":
          "Eat about 3 loaves of vino bread with a good filling, such as cheese, halva or jam."
              "Before bed, you can have a cup of tea with milk, but if the caffeine bothers you and alerts you,"
              "eat the milk alone, with a piece of sweets or cake.",
    },
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        list[index]["week"]!,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Color(0xff0a5e1f)),
                      ),
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
