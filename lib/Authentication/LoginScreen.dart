// rush_baskets\lib\Authentication\LoginScreen.dart

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rush_baskets/Authentication/VerificationScreen.dart';
import 'package:rush_baskets/widget/Btn.dart';
import '../widget/Images.dart';
import '../widget/Spacing.dart';
import '../widget/Text.dart';
import '../widget/color.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  final TextEditingController _phoneController = TextEditingController();
  bool isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    _phoneController.addListener(_validatePhoneNumber);
  }

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  void _validatePhoneNumber() {
    setState(() {
      isButtonEnabled = _phoneController.text.length == 10;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("asset/image/Login.png"),
                // Image.asset(AssetsImages.login),
                const CustomText(
                  text: "Login",
                  textSize: 25,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
                VerticalSpacing(height: 50),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child:
                        Image.asset("asset/icon/India.png"),
                            // Image.asset(AssetsImages.india),
                      ),
                      const SizedBox(width: 8),
                      // Country code text
                      const CustomText(
                        text: "+91",
                        textSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: TextFormField(
                          controller: _phoneController,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(10),
                          ],
                          decoration: const InputDecoration(
                            hintText: "Enter your number",
                            hintStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: hintTextColor,
                            ),
                            contentPadding:
                                EdgeInsets.symmetric(vertical: 11, horizontal: 8),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                VerticalSpacing(height: 35),
                Opacity(
                  opacity: isButtonEnabled ? 1.0 : 0.5,
                  child: PrimaryBtnWidget(
                    name: "Next",
                    width: double.infinity,
                    onTap: isButtonEnabled
                        ? () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const VerificationScreen(),
                              ),
                            );
                          }
                        : null,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
