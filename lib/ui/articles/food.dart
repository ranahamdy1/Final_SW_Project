import 'package:flutter/material.dart';

import '../../shared/shared_screen.dart';

class FoodScreen extends StatefulWidget {
  const FoodScreen({Key? key}) : super(key: key);

  @override
  State<FoodScreen> createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
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
          width: double.infinity,
          height: double.infinity,
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
              children: [
                Image.asset(
                  "assets/images/73.jpeg",
                ),
                const Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Text(
                    "Food and nutrition are the way "
                    "that we get fuel, providing energy "
                    "for our bodies. We need to replace "
                    "nutrients in our bodies with a new "
                    "supply every day. Water is an important "
                    "component of nutrition. Fats, proteins,"
                    " and carbohydrates are all required.",
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
