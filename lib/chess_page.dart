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
        height: double.infinity,
        alignment: Alignment.center,
        color: const Color(0xff607D8B),
        child: GridView.builder(
            shrinkWrap: true,
            itemCount: 64,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 8,
            ),
            itemBuilder: (BuildContext context, int index) {
              if ((index + index ~/ 8) % 2 == 0) {
                return Container(
                  color: Colors.white,
                );
              } else {
                return Container(
                  color: Colors.black,
                );
              }
            }),
      ),
    );
  }
}
