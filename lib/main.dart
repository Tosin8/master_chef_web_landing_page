import 'package:flutter/material.dart';

import 'component/landing_page/appbar.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      title: 'Welcome to Master Chef',
      home: const LandingPage()));
}

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    Size size = MediaQuery.of(context)
        .size; // providing the total heignt and width of the screen.
    return Scaffold(
      body: Container(
          // height: size.height,
          // width: size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bkdg.jpg'), fit: BoxFit.cover),
          ),
          child: Column(
            children: const  [
              MyAppNav(),
            ],
          )),
    );
  }
}
