import 'package:flutter/material.dart';
import 'package:master_chef_web_landing_page/widgets/constant.dart';

class BodyApp extends StatelessWidget {
  const BodyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'We make Delicious Food',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 5),
        const Text(
            'For your healthy living, master chef brings spicy receipe takes goes gently in your stomach, \n  done by our professional chefs in our restaurants. '),
        const Spacer(),
        Row(
          children: [
            TextButton(
                style: ButtonStyle(
                  foregroundColor: const MaterialStatePropertyAll(Colors.white),
                  backgroundColor: MaterialStateProperty.all(kSecondaryColor),
                ),
                onPressed: () {},
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 10),
                    child: Text('Book a Table'.toUpperCase()))),
            const SizedBox(width: 30),
            TextButton(
                style: ButtonStyle(
                  foregroundColor: const MaterialStatePropertyAll(Colors.white),
                  backgroundColor: MaterialStateProperty.all(kPrimaryColor),
                ),
                onPressed: () {},
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 10),
                    child: Text('View Menu'.toUpperCase())))
          ],
        )
      ],
    );
  }
}
