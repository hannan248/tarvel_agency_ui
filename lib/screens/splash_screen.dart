import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tarvenor/screens/onboard/onboard.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), (){
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>OnboardingScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
       backgroundColor: const Color.fromRGBO(1,101,252,1.00),
      body: Center(
        child: Text(
          'Tarvenor',
          style: GoogleFonts.kanit(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

    );
  }
}
