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
        color: const Color(0xff607D8B),
        padding: EdgeInsets.symmetric(horizontal: 16),
        alignment: Alignment.center,
        child: GridView.builder(
            itemCount: 64,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 8,
            ),
            itemBuilder: (BuildContext context, int index) {
              if ((index + index ~/ 8) % 2 == 0) {
                return const Card(
                  color: Colors.white,
                );
              } else {
                return const Card(
                  color: Colors.black,
                );
              }
            }),
      ),
    );
  }
}
