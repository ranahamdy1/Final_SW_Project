import 'package:flutter/material.dart';

class DataSearch extends SearchDelegate {
  List diseases = [
    "diabetes",
    "kidney disease",
    "gastritis",
    "heart disease",
    "cancer",
    "chronic respiratory diseases"
  ];

  List screens = [
    {"image": "assets/images/13.jpeg"}
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.close))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text(query);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List filterDiseases =
        diseases.where((element) => element.contains(query)).toList();
    return ListView.builder(
        itemCount: query == "" ? diseases.length : filterDiseases.length,
        itemBuilder: (context, i) {
          return Padding(
            padding: const EdgeInsets.all(18.0),
            child: InkWell(
              onTap: () {
                query = query == "" ? diseases[i] : filterDiseases[i];
                showResults(context);
              },
              child: Container(
                child: query == ""
                    ? Text(
                        "${diseases[i]}",
                        style: const TextStyle(
                          fontSize: 18,
                          color: Color(0xff37d461),
                        ),
                      )
                    : Text(
                        "${filterDiseases[i]}",
                        style: const TextStyle(
                          fontSize: 18,
                          color: Color(0xff37d461),
                        ),
                      ),
              ),
            ),
          );
        });
  }
}
