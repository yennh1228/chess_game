import 'package:flutter/material.dart';

class ChessGame extends StatefulWidget {
  const ChessGame({Key? key}) : super(key: key);

  @override
  State<ChessGame> createState() => _ChessGameState();
}

class _ChessGameState extends State<ChessGame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chess"),
      ),
      body: Container(
        height: double.infinity,
        color: const Color(0xff607D8B),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        alignment: Alignment.center,
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
