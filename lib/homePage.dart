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
        child: Stack(
          children: [
            Positioned(
                top: 30,
                left: 0,
                child: Image.network(
                    height: 240,
                    width: 240,
                    'https://pngbuy.com/wp-content/uploads/2023/06/Crispy-Chicken-Handi-Biryani-PNG.png')),
            Positioned(
                top: -30,
                right: 0,
                child: Image.network(
                    height: 200,
                    width: 200,
                    'https://imgs.search.brave.com/tRmyKymH4vL1sVMKlJeeQnxWA_mUaeiDuXnssROsEak/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93d3cu/cG5nbWFydC5jb20v/ZmlsZXMvNS9JbmRp/YW4tRm9vZC1QTkct/UGhvdG9zLnBuZw')),
            Positioned(
                bottom: -30,
                left: -40,
                child: Image.network(
                    height: 300,
                    width: 300,
                    'https://imgs.search.brave.com/RpyNnU3MZtXddhzglty5mnz4bTtNLpcfOStzrOBi5VQ/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93d3cu/cG5nbWFydC5jb20v/ZmlsZXMvNS9JbmRp/YW4tRm9vZC1QTkct/UGljLnBuZw')),
            Positioned(
                bottom: 80,
                right:20,
                child: Image.network(
                    height: 150,
                    width: 150,'https://static.vecteezy.com/system/resources/previews/025/270/118/non_2x/butter-chicken-with-ai-generated-free-png.png')),
            Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                        height: 200,
                        width: 180,
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
                    SizedBox(height: 50),
                    InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyRecipes(),
                          )),
                      child: Container(
                        child: Center(
                            child: Text(
                          'My Reciepes',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        )),
                        height: 200,
                        width: 180,
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
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
