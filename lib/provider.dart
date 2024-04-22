import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';

class TextEditControllerProvider extends ChangeNotifier {
  TextEditingController _tcName = TextEditingController();
  TextEditingController _tcIngredients = TextEditingController();
  TextEditingController _tcInstructions = TextEditingController();
  TextEditingController _tcTips = TextEditingController();

  TextEditingController get textEditingControllerName => _tcName;
  TextEditingController get textEditingControllerIngredients => _tcIngredients;
  TextEditingController get textEditingControllerInstructions =>
      _tcInstructions;
  TextEditingController get textEditingControllerTips => _tcTips;

  Future<void> saveText() async {
    final prefs = await SharedPreferences.getInstance();
    final savedRecipes = prefs.getStringList('recipes') ?? [];
    final newRecipe = {
      'recipeName': _tcName.text,
      'ingredients': _tcIngredients.text,
      'instructions': _tcInstructions.text,
      'tips': _tcTips.text,
    };
    savedRecipes.add(jsonEncode(newRecipe));
    prefs.setStringList('recipes', savedRecipes);
    notifyListeners();
  }

  Future<List<Map<String, String>>> getSavedRecipes() async {
    final prefs = await SharedPreferences.getInstance();
    final savedRecipes = prefs.getStringList('recipes') ?? [];
    return savedRecipes
        .map<Map<String, String>>(
            (recipe) => Map<String, String>.from(jsonDecode(recipe)))
        .toList();
  }

  void clearAllTextFields() {
    _tcName.clear();
    _tcIngredients.clear();
    _tcInstructions.clear();
    _tcTips.clear();
  }

  @override
  void dispose() {
    _tcName.dispose();
    _tcIngredients.dispose();
    _tcInstructions.dispose();
    _tcTips.dispose();
    super.dispose();
  }
}
