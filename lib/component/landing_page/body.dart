import 'package:flutter/material.dart';

class BodyApp extends StatelessWidget {
  const BodyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'We make Delicious Food',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 5),
          Text(
              'For your healthy living, master chef brings spicy receipe takes goes gently in your stomach, \n  done by our professional chefs in our restaurants. '),
        ],
      ),
    );
  }
}
