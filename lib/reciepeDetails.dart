import 'package:flutter/material.dart';

class RecipeDetails extends StatelessWidget {
  final Map<String, String> recipe;

  RecipeDetails({required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(recipe['recipeName'] ?? '')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Text('Ingredients:', style: TextStyle(fontWeight: FontWeight.bold)),
          Text(recipe['ingredients'] ?? ''),
          SizedBox(height: 20),
          Text('Instructions:', style: TextStyle(fontWeight: FontWeight.bold)),
          Text(recipe['instructions'] ?? ''),
          SizedBox(height: 20),
          Text('Tips:', style: TextStyle(fontWeight: FontWeight.bold)),
          Text(recipe['tips'] ?? ''),
        ],
      ),
    );
  }
}
