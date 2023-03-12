import 'package:flutter/material.dart';

class ColonScreen extends StatefulWidget {
  const ColonScreen({Key? key}) : super(key: key);

  @override
  State<ColonScreen> createState() => _ColonScreenState();
}

class _ColonScreenState extends State<ColonScreen> {
  List list = [
    {
      "image": "assets/images/22.jpeg",
      "name": "Diabetes",
      "dis":
          '''It is recommended, if desired, to follow a diet for Irritable Bowel Syndrome patients, 
to eat some foods that contain fiber, calcium, and vitamin D, 
such as: vegetables such as: broccoli, beets, spinach, peas, green beans, carrots, and watercress. 
Fruits such as: sweet peppers, apples, oranges, bananas, melons, avocados, and berries.'''
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
