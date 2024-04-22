import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe_ai/addReciepe.dart';
import 'package:recipe_ai/provider.dart';
import 'package:recipe_ai/reciepeDetails.dart';

class MyRecipes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Recipes')),
      body: Consumer<TextEditControllerProvider>(
        builder: (context, controllerProvider, _) {
          return FutureBuilder<List<Map<String, String>>>(
            future: controllerProvider.getSavedRecipes(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else {
                final recipes = snapshot.data ?? [];
                return ListView.builder(
                  itemCount: recipes.length,
                  itemBuilder: (context, index) {
                    final recipe = recipes[index];
                    return ListTile(
                      title: Text(recipe['recipeName'] ?? ''),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RecipeDetails(recipe: recipe),
                          ),
                        );
                      },
                    );
                  },
                );
              }
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddRecipe()),
          );
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
