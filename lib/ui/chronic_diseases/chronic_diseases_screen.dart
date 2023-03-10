import 'package:flutter/material.dart';
import 'package:sw_project1/ui/chronic_diseases/search/search_screen.dart';

class ChronicDiseases extends StatefulWidget {
  const ChronicDiseases({Key? key}) : super(key: key);

  @override
  State<ChronicDiseases> createState() => _ChronicDiseasesState();
}

class _ChronicDiseasesState extends State<ChronicDiseases> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff37d461),
        elevation: 0.0,
        actions: [
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: DataSearch());
              },
              icon: const Icon(
                Icons.search,
              )),
        ],
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
          child: SingleChildScrollView(
            child: Column(
              children: const [
                Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Text(
                    "It is not contagious, it is not caused by bacteria or viruses. "
                    "The infection is usually silent, and the patient may not notice it "
                    "until after the onset of complications, such as high blood pressure. "
                    "They are linked to the dietary and motor behavior of individuals and societies, "
                    "for example diabetes mellitus is associated with overweight and obesity, and respiratory "
                    "diseases are linked to smoking.",
                    style: TextStyle(
                        fontSize: 18,
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
