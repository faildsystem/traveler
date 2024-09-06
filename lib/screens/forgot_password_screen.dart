import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:traveler/components/app_button.dart';
import 'package:traveler/components/app_text_field.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF3F5F6),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text(
              'Forget Password',
              style: TextStyle(
                color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.w800,
                letterSpacing: 1.2,
                fontFamily: 'Poppins',
              ),
            ),
            const SizedBox(height: 20),
            const SizedBox(
              width: 300,
              child: Text(
                textAlign: TextAlign.center,
                'Please enter your email adress to reset your password',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
                padding: const EdgeInsets.all(30),
                child: AppTextField(
                    controller: emailController,
                    hintText: 'Email',
                    obscureText: false)),
            const SizedBox(height: 20),
            SizedBox(
              width: 320,
              height: 50,
              child: AppButton(
                onPressed: () {
                  if (emailController.text.isEmpty ||
                      !emailController.text.contains('@gmail.com')) {
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.error,
                      animType: AnimType.bottomSlide,
                      title: 'Error',
                      desc: 'Please enter valid email address',
                      btnCancelOnPress: () {},
                    ).show();
                  } else {
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.success,
                      animType: AnimType.bottomSlide,
                      title: 'Success',
                      desc: 'Password reset link has been sent to your email',
                      btnOkOnPress: () {},
                    ).show();
                  }
                },
                text: 'Send',
                borderRadius: 8,
                enabled: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
