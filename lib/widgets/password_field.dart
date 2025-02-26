import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({
    super.key,
  });

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obsecuredText = false;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: _obsecuredText,
      decoration: InputDecoration(
        hintText: "***********",
        filled: true,
        fillColor: Color.fromARGB(255, 226, 226, 235),
        hoverColor: Color.fromARGB(255, 226, 226, 235),
        focusColor: Color.fromARGB(255, 226, 226, 235),
        border: OutlineInputBorder(borderSide: BorderSide.none),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _obsecuredText = !_obsecuredText;
            });
          },
          icon: Icon(
            _obsecuredText ? Icons.visibility : Icons.visibility_off,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
