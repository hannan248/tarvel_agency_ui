import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tarvenor/screens/forgetpassword_screen.dart';
import 'package:tarvenor/screens/home_page.dart';
import 'package:tarvenor/screens/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscurePassword = true;
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 130,
                    ),
                    const Text(
                      "Sign in now",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "Please sign in to continue our app",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 40),
                    const TextField(
                      decoration: InputDecoration(
                          hintText: "Email",
                          fillColor: Color.fromRGBO(128, 128, 128, 0.1),
                          focusColor: Colors.white10,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                                color: Color.fromRGBO(128, 128, 128,
                                    0.2)), // Set the border color to grey for enabled state
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                                color: Color.fromRGBO(128, 128, 128,
                                    0.1)), // Set the border color to grey for focused state
                          ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(128, 128, 128, 0.2)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: _passwordController,
                      obscureText: _obscurePassword,
                      decoration: InputDecoration(
                          hintText: "Password",
                          suffixIcon: IconButton(
                            icon: Icon(
                              color: Colors.grey,
                              _obscurePassword
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscurePassword = !_obscurePassword;
                              });
                            },
                          ),
                          fillColor: const Color.fromRGBO(128, 128, 128, 0.1),
                          focusColor: Colors.white10,
                          filled: true,
                          enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                                color: Color.fromRGBO(128, 128, 128,
                                    0.2)), // Set the border color to grey for enabled state
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                                color: Color.fromRGBO(128, 128, 128,
                                    0.1)), // Set the border color to grey for focused state
                          ),
                          border: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(128, 128, 128, 0.2)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ForgetPasswordScreen()));
                        },
                        child: const Text(
                          "Forget Password?",
                          style: TextStyle(
                            color: Color.fromRGBO(1, 101, 252, 1.00),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 400,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(1, 101, 252, 1.00),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const HomePage()));
                        },
                        child: const Text(
                          'Sign In',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignupScreen()));
                      },
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: const TextSpan(
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            TextSpan(text: "Don't have a Account?  "),
                            TextSpan(
                              text: 'Sign up',
                              style: TextStyle(
                                color: Color.fromRGBO(1, 101, 252, 1.00),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "or connect",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWmwYccpGN_2SFl5JJMSaCdmCGmLyaKEwEVw&s"),
                        ),
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQy4MM5ysxfu4moDpIXmovGho-hVw0sJs2wFQ&s"),
                        ),
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://cdn-icons-png.flaticon.com/256/2504/2504839.png"),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
