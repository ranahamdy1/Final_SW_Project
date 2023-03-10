import 'package:flutter/material.dart';

class GainWeightScreen extends StatefulWidget {
  const GainWeightScreen({Key? key}) : super(key: key);

  @override
  State<GainWeightScreen> createState() => _GainWeightScreenState();
}

class _GainWeightScreenState extends State<GainWeightScreen> {
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "The best weight gain diet without a gym in a month",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                  ),
                ),
                Column(
                  children: const [
                    Text(
                      "for one week:",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Color(0xff0a5e1f)),
                    ),
                    Text(
                      "Breakfast:",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                    Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Text(
                        "2 fried eggs or eat a plate of beans with some olive oil added "
                        "* A whole loaf of my country * French fries in oil (medium fruit) "
                        "* A dish of balila with yogurt and nuts added Have fun between breakfast and lunch "
                        "(take it around 11 o'clock) * A plate of wheat bailalah",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    Text(
                      "Lunch:",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                    Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Text(
                        "* Rice or stuffed or 2 large baladi loaves "
                            "* Do not neglect adding vegetables foundry or sautéed in butter to your meal (dish) "
                            "* Eat fried eggs like chicken, fish or meat "
                            "* Eat your green salad at the end of your meal, not the beginning"
                            "You ask to eat it between meal and dinner at about 5 o'clock."
                            "Drink a large glass of milk and add a tablespoon of nourishing bee honey"
                            "With the possibility of eating two pieces of baked goods or sugary cake",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    Text(
                      "Dinner:",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                    Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Text(
                        "Eat about 3 loaves of vino bread with a good filling, such as cheese, halva or jam."
                        "Before bed, you can have a cup of tea with milk, but if the caffeine bothers you and alerts you,"
                        "eat the milk alone, with a piece of sweets or cake.",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
