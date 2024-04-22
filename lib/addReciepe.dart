import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe_ai/provider.dart';

class AddRecipe extends StatelessWidget {
  AddRecipe({Key? key}) : super(key: key);

  textField(name, double height, tc, ctx) {
    final controllerProvider = Provider.of<TextEditControllerProvider>(ctx);
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: SizedBox(
        height: height,
        width: 300,
        child: Stack(
          children: [
            Positioned(
              left: 3,
              top: 0,
              child: Text(
                name,
                style: TextStyle(
                  color: Color.fromARGB(255, 117, 0, 0),
                  fontSize: 15,
                  fontFamily: 'Lexend',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 20,
              child: Container(
                decoration: ShapeDecoration(
                    color: const Color.fromARGB(255, 252, 252, 255),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                    shadows: const [
                      BoxShadow(
                        color: Color.fromARGB(144, 255, 0, 0),
                        blurRadius: 5,
                        blurStyle: BlurStyle.outer,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ]),
                height: height - 20, //40
                width: 340, // 340
                child: TextField(
                  controller: tc,
                  style: const TextStyle(fontSize: 20),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 20, bottom: 10),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final controllerProvider = Provider.of<TextEditControllerProvider>(context);
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          textField('Recipe Name', 70,
              controllerProvider.textEditingControllerName, context),
          SizedBox(
            height: 20,
          ),
          textField('Ingredients', 200,
              controllerProvider.textEditingControllerIngredients, context),
          SizedBox(
            height: 20,
          ),
          textField('Instructions', 250,
              controllerProvider.textEditingControllerInstructions, context),
          SizedBox(
            height: 20,
          ),
          textField('Tips', 100, controllerProvider.textEditingControllerTips,
              context),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 230, right: 75),
            child: SizedBox(
              height: 40,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                ),
                onPressed: () async {
                  await controllerProvider.saveText();
                  Navigator.pop(context);
                },
                child: const Text(
                  'Done',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// class AddRecipe extends StatelessWidget {
//   AddRecipe({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final controllerProvider = Provider.of<TextEditControllerProvider>(context);
//     return Scaffold(
//       appBar: AppBar(),
//       body: ListView(
//         padding: const EdgeInsets.all(20),
//         children: [
//           TextField(
//             controller: controllerProvider.textEditingControllerName,
//             decoration: InputDecoration(labelText: 'Recipe Name'),
//           ),
//           SizedBox(height: 20),
//           TextField(
//             controller: controllerProvider.textEditingControllerIngredients,
//             decoration: InputDecoration(labelText: 'Ingredients'),
//             maxLines: null,
//           ),
//           SizedBox(height: 20),
//           TextField(
//             controller: controllerProvider.textEditingControllerInstructions,
//             decoration: InputDecoration(labelText: 'Instructions'),
//             maxLines: null,
//           ),
//           SizedBox(height: 20),
//           TextField(
//             controller: controllerProvider.textEditingControllerTips,
//             decoration: InputDecoration(labelText: 'Tips'),
//             maxLines: null,
//           ),
//           SizedBox(height: 20),
//           ElevatedButton(
//             onPressed: () async {
//               await controllerProvider.saveText();
//               Navigator.pop(context);
//             },
//             child: Text('Save'),
//           ),
//         ],
//       ),
//     );
//   }
// }
