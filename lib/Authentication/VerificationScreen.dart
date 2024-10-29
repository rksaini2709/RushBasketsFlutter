//rush_baskets\lib\Authentication\VerificationScreen.dart

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:rush_baskets/Navigation/NavigationBottom.dart';
import 'package:rush_baskets/widget/Btn.dart';
import 'package:rush_baskets/widget/VerticalSpacing.dart';
import '../widget/Text.dart';
import '../widget/color.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  String errorMessage = '';
  int _timerSeconds = 0;
  Timer? _timer;
  // Variable to control button state
  bool isOtpValid = false;

  void verifyOTP(String pin) {
    const correctOTP = "2709";
    if (pin == correctOTP) {
      setState(() {
        errorMessage = '';
        // Enable button if OTP is correct
        isOtpValid = true;
      });
      print("OTP Verified");
    } else {
      setState(() {
        errorMessage = "Invalid OTP";
        // Disable button if OTP is incorrect
        isOtpValid = false;
      });
    }
  }

  void _startTimer() {
    setState(() {
      _timerSeconds = 60;
    });
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_timerSeconds == 0) {
        timer.cancel();
      } else {
        setState(() {
          _timerSeconds--;
        });
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("asset/image/Verification.png"),
              const CustomText(
                text: "Phone Verification",
                textSize: 25,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
              VerticalSpacing(height: 12),
              const CustomText(
                text: "Enter your OTP code",
                textSize: 15,
                fontWeight: FontWeight.w400,
                color: hintTextColor,
              ),
              VerticalSpacing(height: 20),
              OTPTextField(
                length: 4,
                width: MediaQuery.of(context).size.width * 0.7,
                fieldWidth: 45,
                spaceBetween: 5,
                style: const TextStyle(fontSize: 17),
                textFieldAlignment: MainAxisAlignment.center,
                fieldStyle: FieldStyle.box,
                onCompleted: verifyOTP,
              ),
              if (errorMessage.isNotEmpty) ...[
                VerticalSpacing(height: 10),
                Text(
                  errorMessage,
                  style: const TextStyle(
                    color: Colors.red,
                    fontSize: 14,
                  ),
                ),
              ],
              VerticalSpacing(height: 20),
              const CustomText(
                text: "Didn’t receive Code?",
                textSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
              GestureDetector(
                onTap: _timerSeconds == 0 ? _startTimer : null,
                child: Text(
                  "Resend again",
                  style: TextStyle(
                    color: _timerSeconds == 0 ? const Color(0xff0000FF) : Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              if (_timerSeconds > 0) ...[
                VerticalSpacing(height: 10),
                Text(
                  "Resend available in $_timerSeconds seconds",
                  style: const TextStyle(
                    color: hintTextColor,
                    fontSize: 12,
                  ),
                ),
              ],
              VerticalSpacing(height: 90),
              Opacity(
                opacity: isOtpValid ? 1.0 : 0.5,
                child: PrimaryBtnWidget(
                  name: "Verify",
                  width: double.infinity,
                  onTap: isOtpValid
                      ? () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const NavigationBottomScreen(initialIndex: 0,)),
                    );
                  }
                      : null,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

