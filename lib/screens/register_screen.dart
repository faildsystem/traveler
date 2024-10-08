import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:traveler/components/app_button.dart';
import 'package:traveler/components/app_text_field.dart';
import 'package:traveler/components/or_section.dart';
import 'package:traveler/screens/congrats_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool obsecuredPassword = true;

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool isFormValid  = false;

  @override
  void initState() {
    super.initState();

    nameController.addListener(validateForm);
    emailController.addListener(validateForm);
    passwordController.addListener(validateForm);
    confirmPasswordController.addListener(validateForm);
  }

  void validateForm() {
    setState(() {
      isFormValid = formKey.currentState?.validate() ?? false;
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFF3F5F6),
        appBar: AppBar(
          backgroundColor: const Color(0xFFF3F5F6),
          title: const Text(
            'Register',
            style: TextStyle(
              color: Colors.black,
              fontSize: 40,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              onChanged: validateForm,
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  AppTextField(
                    controller: nameController,
                    hintText: 'Full Name',
                    obscureText: false,
                    suffixIcon: null,
                  ),
                  const SizedBox(height: 10),
                  AppTextField(
                    controller: emailController,
                    hintText: 'Email',
                    obscureText: false,
                    suffixIcon: null,
                  ),
                  const SizedBox(height: 10),
                  AppTextField(
                    controller: passwordController,
                    hintText: 'Password',
                    obscureText: obsecuredPassword,
                    suffixIcon: GestureDetector(
                      child: obsecuredPassword
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off),
                      onTap: () {
                        setState(() {
                          obsecuredPassword = !obsecuredPassword;
                        });
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  AppTextField(
                    controller: confirmPasswordController,
                    hintText: 'Confirm Password',
                    obscureText: obsecuredPassword,
                    suffixIcon: GestureDetector(
                      child: obsecuredPassword
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off),
                      onTap: () {
                        setState(() {
                          obsecuredPassword = !obsecuredPassword;
                        });
                      },
                    ),
                  ),
                  const SizedBox(height: 25),
                  SizedBox(
                    width: double.infinity,
                    height: 57,
                    child: AppButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          if (passwordController.text !=
                              confirmPasswordController.text) {
                            AwesomeDialog(
                              context: context,
                              dialogType: DialogType.error,
                              animType: AnimType.bottomSlide,
                              title: 'Erorr',
                              desc: 'Password does not match',
                            ).show();
                          } else {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const CongratsScreen(),
                              ),
                            );
                          }
                        }
                      },
                      text: 'Register',
                      borderRadius: 15,
                      enabled: isFormValid ,
                    ),
                  ),
                  const SizedBox(height: 30),
                  const OrSection(isLogin: false),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


