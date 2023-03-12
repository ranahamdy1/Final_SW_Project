import 'package:flutter/material.dart';

class KidneyScreen extends StatefulWidget {
  const KidneyScreen({Key? key}) : super(key: key);

  @override
  State<KidneyScreen> createState() => _KidneyScreenState();
}

class _KidneyScreenState extends State<KidneyScreen> {
  List list = [
    {
      "image": "assets/images/13.jpeg",
      "name": "Diabetes",
      "dis": '''
      Salad recipes 
Avocado salad with miso ginger dressing Pickled onion salad 
Beet salad (beetroot) and walnutsShrimp and apple salad
Vegetable salad with pears, 
fennel and walnuts English cucumber salad with balsamic vinaigrette dressing
Chicken salad with pineapple and balsamic 
dressing Spinach and blueberry salad'''
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
                      child: Image.asset(list[index]["image"]!),
                    ),
                    Text(
                      list[index]["name"]!,
                      style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: Text(
                        list[index]["dis"]!,
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
