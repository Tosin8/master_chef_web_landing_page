import 'package:flutter/material.dart';
import 'Screens/appbar.dart';

void main() {
  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false, home: LandingPage()));
}

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset('assets/images/logo.png'),
              const MyAppNav(),
            ],
          )
        ],
      ),
    );
  }
}
