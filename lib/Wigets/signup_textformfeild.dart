import 'package:flutter/material.dart';

class SignupTextformfeild extends StatefulWidget {
  final String? hintText;
  final bool? ispassword;
  final String? Function(String?)? validator;
  const SignupTextformfeild(
      {super.key, this.ispassword = false, this.validator, this.hintText});

  @override
  State<SignupTextformfeild> createState() => _SignupTextformfeildState();
}

class _SignupTextformfeildState extends State<SignupTextformfeild> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      decoration: InputDecoration(
        hintText: widget.hintText!,
        fillColor: Colors.white,
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          // borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          // borderRadius: BorderRadius.circular(10),
        ),
        border: InputBorder.none,
      ),
    );
  }
}
