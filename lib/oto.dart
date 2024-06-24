import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
//import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  var numberOfFields = 3;
  Color primaryColor = Color(0xFF121212);
  bool clearText = false;
  late List<TextEditingController?> controls;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("OTP Field"),
      ),
      body: Column(
        children: [
          OtpTextField(
            numberOfFields: numberOfFields,
            borderColor: Color(0xFF512DA8),
            focusedBorderColor: primaryColor,
            clearText: clearText,
            showFieldAsBox: false,
            textStyle: theme.textTheme.titleMedium,
            onCodeChanged: (String value) {
              //Handle each value
            },
            handleControllers: (controllers) {
              //get all textFields controller, if needed
              controls = controllers;
            },
            onSubmit: (String verificationCode) {
              //set clear text to clear text from all fields
              setState(() {
                clearText = true;
              });
              //navigate to different screen code goes here
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("Verification Code"),
                    content: Text('Code entered is $verificationCode'),
                  );
                },
              );
            }, // end onSubmit
          )
        ],
      ),
    );
  }
}
