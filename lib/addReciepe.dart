import 'package:flutter/material.dart';

class addReciepe extends StatelessWidget {
  addReciepe({super.key});
  String name = '';
  double height = 0;
  TextEditingController tc = TextEditingController();
  textField(name, height, tc) {
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
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          textField(name = 'Reciepe Name', height = 70, tc),
          SizedBox(
            height: 20,
          ),
          textField(name = ' Ingredients', height = 200, tc),
          SizedBox(
            height: 20,
          ),
          textField(name = 'Instructions', height = 250, tc),
          SizedBox(
            height: 20,
          ),
          textField(name = 'Tips', height = 100, tc),
          SizedBox(
            height: 20,
          ),
          Padding(
              padding: EdgeInsets.only(left: 230, right: 75),
              child: SizedBox(
                  height: 40,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6))),
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.redAccent)),
                      onPressed: () {},
                      child: const Text(
                        'Done',
                        style: TextStyle(color: Colors.white),
                      ))))
        ],
      ),
    );
  }
}
