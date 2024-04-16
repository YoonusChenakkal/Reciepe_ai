import 'dart:math';

import 'package:flutter/material.dart';
import 'package:recipe_ai/addReciepe.dart';
import 'package:recipe_ai/myReciepes.dart';
import 'package:recipe_ai/reciepeAi.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => addReciepe(),
                )),
            child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add,
                      size: 26,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Create Your Own Recieps',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                height: 40,
                width: MediaQuery.of(context).size.width / 1.2,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(255, 255, 0, 0),
                        blurStyle: BlurStyle.outer,
                        offset: Offset(0, 0),
                        blurRadius: 2)
                  ],
                  border: Border.all(color: Colors.red, width: 2),
                  borderRadius: BorderRadius.circular(20),
                )),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => recipeAi(),
                    )),
                child: Container(
                  child: Center(
                      child: Text(
                    'Reciepe Ai',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600),
                  )),
                  height: 140,
                  width: 140,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 3),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(255, 255, 0, 0),
                            blurStyle: BlurStyle.outer,
                            offset: Offset(0, 0),
                            blurRadius: 8)
                      ],
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(8)),
                ),
              ),
              InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => myReciepes(),
                    )),
                child: Container(
                  child: Center(
                      child: Text(
                    'My Reciepes',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )),
                  height: 140,
                  width: 140,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(255, 255, 0, 0),
                            blurStyle: BlurStyle.outer,
                            offset: Offset(0, 0),
                            blurRadius: 8)
                      ],
                      border: Border.all(color: Colors.red, width: 3),
                      borderRadius: BorderRadius.circular(8)),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
