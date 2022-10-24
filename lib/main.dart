import 'package:flutter/material.dart';

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
        body: Stack(
      children: [
        Container(
          decoration: const BoxDecoration(),
          child: Image.asset('assets/images/bkgd.jpg'),
        ),
        Column(
          children: [
            Row(),
          ],
        ),
      ],
    ));
  }
}
