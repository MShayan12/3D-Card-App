import 'package:flutter/material.dart';

class CardFront extends StatelessWidget {
  const CardFront({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Card(
        elevation: 8,
        margin: const EdgeInsets.all(16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(children: [
            Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                'assets/visa.png',
                scale: 45,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            const Text(
              "1234 5678 9012 3456",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 2,
                  shadows: [
                    Shadow(color: Colors.black12, offset: Offset(2, 1))
                  ]),
            ),
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Name on Card",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "Shayan Arshad",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Expiry",
                    ),
                    Text(
                      "10/24",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
