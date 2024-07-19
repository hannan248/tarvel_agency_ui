import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:tarvenor/screens/otp_screen.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight=MediaQuery.of(context).size.height;
    double screenWidth=MediaQuery.of(context).size.width;
    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back_ios_new)),
      ),
      body:  Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: screenHeight*0.10,),
              const Text("Forgot password",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
              SizedBox(height:screenHeight*0.02,),
              const Text("Enter your email account to reset your password",style: TextStyle(fontSize: 16,color: Colors.grey),textAlign: TextAlign.center,),
              SizedBox(height:screenHeight*0.02,),
               const TextField(
                decoration: InputDecoration(
                  fillColor:  Color.fromRGBO(128, 128, 128, 0.2),
                 focusColor: Colors.white10,
                 filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color:  Color.fromRGBO(128, 128, 128, 0.2)), // Set the border color to grey for enabled state
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Color.fromRGBO(128, 128, 128, 0.2)), // Set the border color to grey for focused state
                    ),
                 border: OutlineInputBorder(
                   borderSide: BorderSide(color:  Color.fromRGBO(128, 128, 128, 0.2)),
                   borderRadius:BorderRadius.all(Radius.circular(10))
                 )
                ),
              ),
              SizedBox(height: screenHeight*0.05,),
              Container(
                width: screenWidth*0.85,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(1, 101, 252, 1.00),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return ResetPasswordDialog();
                      },
                    );
                  },
                  child: const Text(
                    'Reset Password',
                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
class ResetPasswordDialog extends StatefulWidget {
  @override
  _ResetPasswordDialogState createState() => _ResetPasswordDialogState();
}

class _ResetPasswordDialogState extends State<ResetPasswordDialog> {
  @override
  void initState() {
    super.initState();
    // Close the dialog and navigate to the next screen after 3 seconds
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pop();
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const OtpScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return   const AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            backgroundColor: Colors.blueAccent,
              radius:30,
              child: Icon(Icons.email, size: 40.0, color: Colors.white)),
          SizedBox(height: 20),
          Text('Check your email'),
          SizedBox(height: 20),
          Text('We have send password recovery instruction to your email',textAlign: TextAlign.center,),
        ],
      ),
    );
  }
}
