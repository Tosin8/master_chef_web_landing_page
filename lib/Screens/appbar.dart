import 'package:flutter/material.dart';

class MyAppNav extends StatelessWidget {
  const MyAppNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset('assets/images/logo.png'),
        const SizedBox(width: 40),
        Container(
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      MyNav(name: 'Home'),
                      MyNav(name: 'About'),
                      MyNav(name: 'Pricing'),
                      MyNav(name: 'Meals'),
                      MyNav(name: 'Location'),
                      MyNav(name: 'Contact'),
                      SizedBox(width: 10),
                      Btn(name: 'Get Started'),
                    ]))),
      ],
    );
  }
}

// ignore: camel_case_types
class MyNav extends StatelessWidget {
  const MyNav({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // ignore: avoid_print
        (print(name));
      },
      child: Text(
        name,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}

class Btn extends StatelessWidget {
  const Btn({Key? key, required this.name}) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // ignore: avoid_print
        (print('Get Started'));
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: const Color.fromARGB(255, 211, 163, 18)),
        child: Text(
          name,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white60,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
