import 'package:flutter/material.dart';

class MyAppNav extends StatelessWidget {
  const MyAppNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  MyNav(name: 'Hone'),
                  MyNav(name: 'About'),
                  MyNav(name: 'Pricing'),
                  MyNav(name: 'Meals'),
                  MyNav(name: 'Location'),
                  MyNav(name: 'Contact'),
                  Spacer(),
                  Btn(name: 'Get Started'),
                ])));
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
          color: Colors.black45,
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
            color: Colors.yellowAccent),
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
