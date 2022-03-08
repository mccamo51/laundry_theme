// ignore_for_file: file_names

import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  final String? hint;
  final TextEditingController? controller;

  const LoginTextField({Key? key, this.hint, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      controller: controller,
      decoration: InputDecoration(hintText: hint),
    );
  }
}
