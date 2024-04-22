import 'package:flutter/material.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';
import 'package:recipe_ai/homePage.dart';
import 'package:recipe_ai/myReciepes.dart';
import 'package:recipe_ai/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => TextEditControllerProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainApp(),
      ),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: homePage());
  }
}
