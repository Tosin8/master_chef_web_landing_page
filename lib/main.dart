import 'package:flutter/material.dart';
import 'Screens/appbar.dart';
import 'Screens/buttons.dart';
import 'Screens/body.dart';

void main() {
  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Master Chef',
      home: LandingPage()));
}

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: const [
          MyAppNav(),
          SizedBox(height: 30),
          BodyApp(),
          Btns(),
          SizedBox(height: 10),
        ],
      ),
    ));
  }
}
