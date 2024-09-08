import 'package:flutter/material.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    this.suffixIcon,
    this.labelText,
    this.keyboardType = TextInputType.emailAddress,
    this.radius = 15,
    this.fillColor = const Color(0xFFFFFFFF),
  });

  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final Widget? suffixIcon;
  final String? labelText;
  final TextInputType keyboardType;
  final double radius;
  final Color fillColor;


  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  Color textColor = const Color(0xFF191C32);
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    _focusNode.removeListener(_onFocusChange);
    _focusNode.dispose();
    super.dispose();
  }

  void _onFocusChange() {
    setState(() {
      textColor = _focusNode.hasFocus
          ? const Color(0xFF1BBA85)
          : const Color(0xFF191C32);
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: _focusNode,
      keyboardType: widget.keyboardType,
      controller: widget.controller,
      cursorColor: const Color(0xFF1BBA85),
      obscureText: widget.obscureText,
      obscuringCharacter: '●',
      style: TextStyle(
        color: textColor,
        fontFamily: 'Poppins',
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: widget.fillColor,
        suffixIcon: widget.suffixIcon,
        suffixIconColor: const Color(0xFFB3B2B2),
        labelText: widget.labelText,
        labelStyle: const TextStyle(
          color: Colors.black,
          fontFamily: 'Poppins',
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
        hintText: widget.hintText,
        hintStyle: const TextStyle(
          color: Color(0xFFB3B2B2),
          fontFamily: 'Poppins',
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.radius),
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.radius),
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.radius),
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.radius),
          borderSide: const BorderSide(
            color: Color(0xFF1BBA85),
            width: 1,
          ),
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Cannot be empty';
        }

        if (widget.hintText == 'Password' && value.length < 6) {
          return 'Password must be at least 6 characters';
        }
        if (widget.hintText == 'Confirm Password' && value.length < 6) {
          return 'Password must be at least 6 characters';
        }

        if (widget.hintText == 'Confirm Password' &&
            value != widget.controller.text) {
          return 'Password does not match';
        }

        if (widget.hintText == 'Email' && !value.contains('@gmail.com')) {
          return 'Invalid email';
        }

        return null;
      },
    );
  }
}
