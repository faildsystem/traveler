import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:traveler/components/app_button.dart';
import 'package:traveler/components/app_text_field.dart';
import 'package:traveler/screens/forgot_password_screen.dart';
import 'package:traveler/screens/home_screen.dart';
import 'package:traveler/screens/register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool obsecuredPassword = true;

  bool isFormValid = false;

  @override
  void initState() {
    super.initState();

    emailController.addListener(validateForm);
    passwordController.addListener(validateForm);
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
            'Log In',
            style: TextStyle(
              color: Colors.black,
              fontSize: 40,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              onChanged: validateForm,
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  AppTextField(
                    controller: emailController,
                    hintText: 'Email',
                    obscureText: false,
                    suffixIcon: null,
                  ),
                  const SizedBox(height: 20),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const ForgotPasswordScreen(),
                            ),
                            (value) => true,
                          );
                        },
                        child: const Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Color(0xFF1BBA85),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 35),
                  SizedBox(
                    width: double.infinity,
                    height: 57,
                    child: AppButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          if (emailController.text == 'admin@gmail.com' ||
                              passwordController.text == 'admin1') {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomeScreen()),
                                (value) => false);
                          } else {
                            AwesomeDialog(
                              context: context,
                              dialogType: DialogType.error,
                              animType: AnimType.bottomSlide,
                              title: 'Error',
                              desc: 'Incorrect email or password',
                              btnCancelText: 'OK',
                              btnCancelOnPress: () {},
                            ).show();
                          }
                        }
                      },
                      text: 'Login',
                      borderRadius: 15,
                      enabled: isFormValid,
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    'Or',
                    style: TextStyle(
                      color: Color(0xFFB3B2B2),
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(FontAwesomeIcons.facebookF),
                        color: Colors.blue,
                      ),
                      const SizedBox(width: 5),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(FontAwesomeIcons.google),
                        color: Colors.red,
                      ),
                    ],
                  ),
                  const SizedBox(height: 35),
                  const Text(
                    'Don\'t Have An Account?',
                    style: TextStyle(
                      color: Color(0xFF000000),
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegisterScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      'REGISTER',
                      style: TextStyle(
                        color: Color(0xFF1BBA85),
                        fontSize: 14,
                        letterSpacing: 8,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                    child: Divider(
                      color: Color(0xFF1BBA85),
                      thickness: 1,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
