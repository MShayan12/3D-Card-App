import 'dart:math';

import 'package:flutter/material.dart';

class CardBack extends StatelessWidget {
  const CardBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Transform(
        transform: Matrix4.identity()
          ..setEntry(3, 2, 0.001)
          ..rotateY(pi * 1),
        origin: Offset(MediaQuery.of(context).size.width / 2, 0),
        child: Card(
          margin: const EdgeInsets.all(16),
          elevation: 8,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: Column(children: [
            const SizedBox(
              height: 32,
            ),
            Container(
              color: Colors.black,
              height: 50,
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        color: Colors.grey,
                        width: 200,
                        height: 30,
                      ),
                      const SizedBox(
                        width: 32,
                      ),
                      const Text(
                        "339",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 15,
                    color: Colors.black12,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 15,
                    color: Colors.black12,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 15,
                    color: Colors.black12,
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
