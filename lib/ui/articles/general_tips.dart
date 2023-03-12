import 'package:flutter/material.dart';

import '../../shared/shared_screen.dart';

class GeneralTipsScreen extends StatefulWidget {
  const GeneralTipsScreen({Key? key}) : super(key: key);

  @override
  State<GeneralTipsScreen> createState() => _GeneralTipsScreenState();
}

class _GeneralTipsScreenState extends State<GeneralTipsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: greenColor,
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
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                greenColor,
                //Color(0xff9e3609),
                const Color(0xffc3c9c5),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: const [
                Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Text(
                    "Doing it yourself We're all unique and one size does not fit all. "
                    "DIY weight loss involves making more realistic and flexible changes that can become "
                    "long-term healthy habits. The aim is to get all the nutrients you need while balancing "
                    "this out with a little food fun to prevent you feeling deprived.Start with some goalsSet "
                    "yourself some realistic goals and an achievable timeframe in which to reach them. Here are "
                    "some examples:I will lose around half a kilogram a week or 1 cm from my waist per fortnight. "
                    "I will take a healthy lunch to work four times a week.I will only eat dessert three nights "
                    "a week. I'll go for a walk for 30 minutes three times a week.What to eatForget about low-carb, "
                    "low-fat or whatever; aim to eat fewer kilojoules. Focus on the nutritious foods you can eat, "
                    "rather than the fattening foods you can't eat. You can't go wrong doing the following:Eat more "
                    "vegetables. They're low in kilojoules and packed with nutrients. Include protein-rich foods "
                    "(such as fish, lean meat, chicken, eggs and low-fat dairy) in each meal to stave off hunger."
                    " Choose whole grains for maximum nutrition and filling power.Drink less alcohol - it's very "
                    "high in 'empty' (nutrient-poor) kilojoules. Choose calcium-rich dairy foods for healthy weight "
                    "and bone health.Vital for vegetariansReplace each serving from the meat group with half a cup of "
                    "cooked legumes: lentils, chickpeas, split peas, dried or canned beans.",
                    style: TextStyle(
                        fontSize: 33,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
