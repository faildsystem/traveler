import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:traveler/components/app_text_field.dart';
import 'package:traveler/screens/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool obsecuredPassword = true;
  bool obsecuredConfirmPassword = true;

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

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
          padding: const EdgeInsets.all(30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 20),
                AppTextField(
                  controller: nameController,
                  hintText: 'Full Name',
                  obscureText: false,
                  suffixIcon: null,
                ),
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
                const SizedBox(height: 20),
                AppTextField(
                  controller: confirmPasswordController,
                  hintText: 'Confirm Password',
                  obscureText: obsecuredConfirmPassword,
                  suffixIcon: GestureDetector(
                    child: obsecuredConfirmPassword
                        ? const Icon(Icons.visibility)
                        : const Icon(Icons.visibility_off),
                    onTap: () {
                      setState(() {
                        obsecuredConfirmPassword = !obsecuredConfirmPassword;
                      });
                    },
                  ),
                ),
                const SizedBox(height: 35),
                SizedBox(
                  width: double.infinity,
                  height: 57,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(
                        const Color(0xFF1BBA85),
                      ),
                      shape: WidgetStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    child: const Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
                  'Already Have An Account?',
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
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    'LOGIN',
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
    );
  }
}
