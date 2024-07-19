import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tarvenor/screens/login_screen.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.08),
          child: Column(
            children: [
              const Text(
                "OTP Verification",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: screenWidth * 0.04,
              ),
              const Text(
                textAlign: TextAlign.center,
                "Please check your email to see verification code",
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              SizedBox(height: screenWidth * 0.08),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "OTP Code",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
              ),
              SizedBox(
                height: screenWidth * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(4, (index) {
                  return Container(
                    height: screenHeight * 0.08,
                    width: screenWidth * 0.15,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: TextField(
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 24),
                        keyboardType: TextInputType.number,
                        maxLength: 1,
                        decoration: InputDecoration(
                          counterText: '',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  );
                }),
              ),
              SizedBox(
                height: screenHeight * 0.05,
              ),
              Container(
                width: 400,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(1, 101, 252, 1.00),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  },
                  child: const Text(
                    'Verify',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Resend code to",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "01:26",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
