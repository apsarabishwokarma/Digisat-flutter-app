import 'package:digisat_app/widgets/material.dart';
import 'package:flutter/material.dart';
import 'package:digisat_app/auth/reset_password_screen.dart';

class VerifyEmail extends StatefulWidget {
  const VerifyEmail({Key? key}) : super(key: key);

  @override
  _VerifyEmailState createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyEmail> {
  TextEditingController otpController1 = TextEditingController();
  TextEditingController otpController2 = TextEditingController();
  TextEditingController otpController3 = TextEditingController();
  TextEditingController otpController4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        shadowColor: Colors.transparent,
        title: const Text(
          "Verification",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/AuthScreen.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: 40),
              const Text(
                "Verify Your Email Address",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "OTP has been send to apsarabk94@gmail.com \n Enter the code to verify your email address.",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildOtpTextField(otpController1),
                  buildOtpTextField(otpController2),
                  buildOtpTextField(otpController3),
                  buildOtpTextField(otpController4),
                ],
              ),
              const SizedBox(height: 40),
              TextButton(
                onPressed: () {},
                child: RichText(
                  text: TextSpan(
                    text: "Didn't receive a code ? ",
                    style: const TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: 'Resend code',
                        style: TextStyle(color: violet[600]),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {
                  // Check if OTP is "1234" and open ResetPasswordScreen
                  String enteredOtp = "${otpController1.text}${otpController2.text}${otpController3.text}${otpController4.text}";
                  if (enteredOtp == "1234") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ResetPasswordScreen()),
                    );
                  } else {
                    // Handle incorrect OTP logic
                    print("Incorrect OTP. Please try again.");
                  }
                },
                child: const Text('Verify'),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildOtpTextField(TextEditingController controller) {
    return Container(
      width: 50,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      child: TextFormField(
        controller: controller,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        decoration: const InputDecoration(
          counterText: "",
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
