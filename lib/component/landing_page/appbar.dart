import 'package:flutter/material.dart';

import '../../widgets/constant.dart';

class MyAppNav extends StatelessWidget {
  const MyAppNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Image.asset('assets/images/logo.png'),
          const Text(
            'MasterChef',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(width: 20),
          Container(
              height: 60,
              width: 900,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, -2),
                    blurRadius: 30,
                    color: Colors.black.withOpacity(.16),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(width: 6),
                      const MyNav(name: 'Home'),
                      const MyNav(name: 'About'),
                      const MyNav(name: 'Pricing'),
                      const MyNav(name: 'Meals'),
                      const MyNav(name: 'Location'),
                      const MyNav(name: 'Contact'),
                      const SizedBox(width: 10),
                      TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor:
                              MaterialStateProperty.all(kPrimaryColor),
                        ),
                        onPressed: () {},
                        child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 12, horizontal: 10),
                            child: Text('Get Started'.toUpperCase())),
                      ),
                      const SizedBox(width: 6),
                    ]),
              )),
        ],
      ),
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
