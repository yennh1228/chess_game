import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ChessGame extends StatefulWidget {
  const ChessGame({Key? key}) : super(key: key);

  @override
  State<ChessGame> createState() => _ChessGameState();
}

class _ChessGameState extends State<ChessGame> {
  int row = 8;
  int totalNumOfSquare = 64;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chess"),
      ),
      body: Container(
        color: Color(0xff607D8B),
        child: GridView.builder(
            itemCount: 64,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 8,
            ),
            itemBuilder: (BuildContext context, int index) {
              if (index.isEven) {
                return Container(
                  color: Colors.amber,
                  child: Text("$index"),
                );
              } else {
                return Container(
                  color: Colors.black,
                  child: Text("$index"),
                );
              }
            }),
      ),
    );
  }
}

class buildLine1 extends StatelessWidget {
  const buildLine1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 64,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 8,
        ),
        itemBuilder: (BuildContext context, int index) {
          if (index == 1 ||
              index == 3 ||
              index == 5 ||
              index == 7 ||
              index == 8 ||
              index == 10 ||
              index == 12 ||
              index == 14 ||
              index == 17 ||
              index == 19 ||
              index == 21 ||
              index == 23 ||
              index == 24 ||
              index == 26 ||
              index == 28 ||
              index == 30 ||
              index == 33 ||
              index == 35 ||
              index == 37 ||
              index == 39 ||
              index == 40 ||
              index == 42 ||
              index == 44 ||
              index == 46 ||
              index == 49 ||
              index == 51 ||
              index == 53 ||
              index == 55 ||
              index == 56 ||
              index == 58 ||
              index == 60 ||
              index == 62) {
            return Card(
              color: Colors.amber,
            );
          } else {
            return Card(
              color: Colors.black,
            );
          }
        });
  }
}
