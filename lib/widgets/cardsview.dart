import 'dart:math';

import 'package:card_app/widgets/cardback.dart';
import 'package:card_app/widgets/cardfront.dart';
import 'package:flutter/material.dart';

class CardsView extends StatefulWidget {
  const CardsView({Key? key}) : super(key: key);

  @override
  _CardsViewState createState() => _CardsViewState();
}

class _CardsViewState extends State<CardsView> {
  double _rotationFactor = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.white,
            elevation: 4,
            title: const Text(
              "My Cards :)",
              style: TextStyle(color: Colors.black),
            )),
        body: Column(
          children: [
            Transform(
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.001)
                ..rotateY(pi * _rotationFactor),
              origin: Offset(MediaQuery.of(context).size.width / 2, 0),
              child:
                  _rotationFactor < 0.5 ? const CardFront() : const CardBack(),
            ),
            Slider(
                value: _rotationFactor,
                onChanged: (double value) {
                  setState(() {
                    _rotationFactor = value;
                  });
                })
          ],
        ));
  }
}
