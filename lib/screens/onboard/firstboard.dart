import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingPage1 extends StatelessWidget {
 // final VoidCallback nextPage;

  const OnboardingPage1({ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
            child: Image.network(
              "https://media.istockphoto.com/id/518356812/photo/tropical-sea-and-rocks.webp?b=1&s=170667a&w=0&k=20&c=w7t3RYMLDRcyy-l_1PEbYh034TIG4XLCRiaQoNB7GJU=",
              fit: BoxFit.cover,
              height: 450,
            ),
          ),
          const SizedBox(height: 20),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: GoogleFonts.lobster(
                color: Colors.black,
                fontSize: 40,
              ),
              children: <TextSpan>[
                const TextSpan(text: 'Life is short and the world is '),
                TextSpan(
                  text: 'wide',
                  style: GoogleFonts.lobster(
                    color: Colors.deepOrange,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Plan and personalize tours seamlessly with our app, managing flights, accommodations, and activities to create unforgettable journeys.",
            style: TextStyle(color: Colors.grey),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),

        ],
      ),
    );
  }
}
