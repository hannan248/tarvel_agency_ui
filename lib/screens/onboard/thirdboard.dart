import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingPage3 extends StatelessWidget {
  const OnboardingPage3({Key? key}) : super(key: key);

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
              "https://media.istockphoto.com/id/1469699850/photo/happy-family-running-or-flying-toys-on-sunset-beach-or-ocean-in-freedom-holiday-energy.webp?b=1&s=170667a&w=0&k=20&c=vbMFMhvrKKrBxBuhtQecbAtNfLz8-O3YVNFRt34zdeY=",
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
                const TextSpan(text: "People don't take trips, "),
                TextSpan(
                  text: 'trips take people',
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
            "Discover tailored tours and effortless travel planning with us, ensuring each journey is perfectly crafted for you.",
            style: TextStyle(color: Colors.grey),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
