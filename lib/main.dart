import 'package:flutter/material.dart';
import 'package:sw_project1/tips/Home_DB.dart';
import 'package:sw_project1/ui/start_screen.dart';

import 'database/sqflite/addtips.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const StartScreen(),
      routes: {
        "Home": (context) => const MyHomeDbScreen(),
        "addTips": (context) => const AddTips(),
        "editTips": (context) => const AddTips(),
      },
    );
  }
}
