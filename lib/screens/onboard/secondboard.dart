import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingPage2 extends StatelessWidget {


  const OnboardingPage2({ Key? key}) : super(key: key);

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
              "https://media.istockphoto.com/id/155373490/photo/creeks.webp?b=1&s=170667a&w=0&k=20&c=clhHZA_BSa4Gr9xBTYKw1M_cOEJq7RVQYkjzf2SPh0o=",
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
                const TextSpan(text: "It's a big world out there, go and "),
                TextSpan(
                  text: 'explore',
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
            "Explore curated tours and manage your travel details effortlessly with us, ensuring every trip is tailored to perfection.",
            style: TextStyle(color: Colors.grey),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),

        ],
      ),
    );
  }
}
