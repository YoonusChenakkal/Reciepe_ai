import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class recipeAi extends StatefulWidget {
  recipeAi({super.key});
  String output = 'type something';

  @override
  State<recipeAi> createState() => _recipeAiState();
}

class _recipeAiState extends State<recipeAi> {
  @override
  TextEditingController tc = TextEditingController();
  ai() async {
    const String apiKey = 'AIzaSyAjLBDEn0zMypsPF0jD7L5YFYWSXfmO61I';
    final model = GenerativeModel(model: 'gemini-pro', apiKey: apiKey);
    final content = [Content.text(tc.text)];
    final response = await model.generateContent(content);
    print(response.text);

    setState(() {
      widget.output = response.text.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        TextField(
          controller: tc,
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
            onPressed: () {
              ai();
            },
            child: Text('Enter')),
        Text(widget.output ?? 'no text')
      ]),
    );
  }
}
