import 'package:flutter/material.dart';

import '../../shared/shared_screen.dart';

class ConnectUsScreen extends StatefulWidget {
  const ConnectUsScreen({Key? key}) : super(key: key);

  @override
  State<ConnectUsScreen> createState() => _ConnectUsScreenState();
}

class _ConnectUsScreenState extends State<ConnectUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: greenColor,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "Contact Us",
                style: TextStyle(color: greenColor, fontSize: 33),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    size: 45,
                    color: greenColor,
                  ),
                  const Text(
                    "  El mansoura",
                    style: TextStyle(fontSize: 25),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Icon(
                    Icons.phone,
                    size: 45,
                    color: greenColor,
                  ),
                  const Text(
                    "  +201019149288",
                    style: TextStyle(fontSize: 25),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Icon(
                    Icons.email,
                    size: 45,
                    color: greenColor,
                  ),
                  const Text(
                    "  ranahamdy2@gmail.com",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(height: 27),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(greenColor),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(horizontal: 79, vertical: 10)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(27))),
                ),
                child: const Text(
                  "Contact Us",
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ]),
          ),
        ));
  }
}
